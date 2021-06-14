<?php
/*
* InventoryController.php - Controller file
*
* This file is part of the Inventory component.
*-----------------------------------------------------------------------------*/

namespace App\Yantrana\Components\Inventory\Controllers;

use App\Yantrana\Base\BaseController;
use App\Yantrana\Components\ActivityLog\Models\ActivityLogModel;
use App\Yantrana\Components\Inventory\Models\StockTransactionModel;
use App\Yantrana\Components\Product\Models\ProductCombinationModel;
use App\Yantrana\Components\User\Models\User;
use App\Yantrana\Components\User\Models\UserRole;
use App\Yantrana\Support\CommonPostRequest as Request;
use App\Yantrana\Components\Inventory\Requests\UpdateInventoryRequest;
use App\Yantrana\Components\Inventory\InventoryEngine;
use Barryvdh\DomPDF\Facade as PDF;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class InventoryController extends BaseController
{
    /**
     * @var  InventoryEngine $inventoryEngine - Inventory Engine
     */
    protected $inventoryEngine;

    /**
     * Constructor
     *
     * @param InventoryEngine $inventoryEngine - Inventory Engine
     *
     * @return  void
     *-----------------------------------------------------------------------*/

    function __construct(InventoryEngine $inventoryEngine)
    {
        $this->inventoryEngine = $inventoryEngine;
    }

    /**
     * Get Datatable list of inventory
     *
     * @return json object
     *---------------------------------------------------------------- */
    public function prepareInventoryList()
    {
        $processReaction = $this->inventoryEngine->prepareList();


        return __processResponse($processReaction, [], [], true);
    }

    /**
     * Get Inventory Update Data
     *
     * @param string $productId
     * @param string $combinationId
     * @param string $locationId
     * @param string $supplierId
     *
     * @return json object
     *---------------------------------------------------------------- */
    public function getInventoryUpdateData($productId, $combinationId, $locationId, $supplierId)
    {
        $processReaction = $this->inventoryEngine->prepareInventoryUpdateData($productId, $combinationId, $locationId, $supplierId);

        return __processResponse($processReaction, [], [], true);
    }

    /**
     * Get Inventory Update Data
     *
     * @param string $productId
     * @param string $combinationId
     * @param string $locationId
     *
     * @return json object
     *---------------------------------------------------------------- */
    public function getProductCombination($productId)
    {
        $processReaction = $this->inventoryEngine->prepareProductCombination($productId);

        return __processResponse($processReaction, [], [], true);
    }

    /**
     * Calculate Options Quantity
     *
     * @param string $productId
     * @param string $combinationId
     * @param string $locationId
     * @param string $supplierId
     *
     * @return json object
     *---------------------------------------------------------------- */
    public function calculateOptionsQuantity($productId, $combinationId, $locationId, $supplierId, $type)
    {
        $processReaction = $this->inventoryEngine->processCalcuateQuantity($productId, $combinationId, $locationId, $supplierId, $type);

        return __processResponse($processReaction, [], [], true);
    }

    /**
     * Update Inventory Quantity
     *
     * @param string $productId
     *
     * @return json object
     *---------------------------------------------------------------- */
    public function updateInventory(UpdateInventoryRequest $request, $productId)
    {
        $processReaction = $this->inventoryEngine->processUpdateInventory($request->all(), $productId);

        return __processResponse($processReaction, [], [], true);
    }

    /**
     * Get Inventory Transaction Data
     *
     * @param string $productId
     * @param string $combinationId
     * @param string $tranType
     * @param string $locationId
     *
     * @return json object
     *---------------------------------------------------------------- */
    public function getInventoryTransactionData($productId, $combinationId, $tranType, $locationId)
    {
        if ($tranType == 1) {
            $processReaction = $this->inventoryEngine
                ->prepareInventoryTrasactionData($productId, $combinationId, $locationId);
        } elseif ($tranType == 2) {
            $processReaction = $this->inventoryEngine
                ->prepareProductTrasactionData($productId, $combinationId);
        }

        return __processResponse($processReaction, [], [], true);
    }

    /**
     * Delete stock of single combination inventory
     * @param Request $request
     * @return false|\Illuminate\Contracts\Foundation\Application|\Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector|string
     * @throws \Exception
     */
    public function deleteSingleInventory(Request $request)
    {
        $transaction = StockTransactionModel::where([
            'locations__id' => $request->locationId,
            'suppliers__id' => $request->supplierId,
            'product_combinations__id' => $request->combinationId,
        ])->first();

        activityLog(7, $transaction->_id, 3, 'combination', 'Combination inventory deleted');

        $transaction->delete();

        $hasStockTransaction = StockTransactionModel::where('product_combinations__id', $request->combinationId)->exists();
        if (!$hasStockTransaction)
            ProductCombinationModel::where('_id', $request->combinationId)->update(['status' => 1]);

        $processReaction = [
            "reaction_code" => 1,
            "data" => [],
            "message" => "Inventory deleted successfully."
        ];

        return __processResponse($processReaction, [], [], true);
    }

    /**
     * Delete all inventory of given product
     * @param Request $request
     * @return false|\Illuminate\Contracts\Foundation\Application|\Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector|string
     * @throws \Exception
     */
    public function deleteProductInventory(Request $request)
    {
        activityLog(7, $request->productId, 3, 'product', 'Product inventories deleted');

        $combinationIds = ProductCombinationModel::where('products__id', $request->productId)->pluck('_id');
        StockTransactionModel::whereIn('product_combinations__id', $combinationIds)->delete();

        foreach ($combinationIds as $combinationId) {
            $hasStockTransaction = StockTransactionModel::where('product_combinations__id', $combinationId)->exists();
            if (!$hasStockTransaction)
                ProductCombinationModel::where('_id', $combinationId)->update(['status' => 1]);
        }

        $processReaction = [
            "reaction_code" => 1,
            "data" => [],
            "message" => "Inventory deleted successfully."
        ];

        return __processResponse($processReaction, [], [], true);
    }

    private function getStockStockForExport($clauses = [])
    {
        $sub = StockTransactionModel::withoutGlobalScopes()->select('locations__id', 'stock_transactions.product_combinations__id',
            DB::raw("SUM(IF((type = 1), quantity, 0)) as stock_out"),
            DB::raw("SUM(IF((type = 2), quantity, 0)) as stock_in"))
            ->groupBy("product_combinations__id", "locations__id")
            ->orderBy("locations__id");

        $data = DB::table(DB::raw("({$sub->toSql()}) as st"))
            ->mergeBindings($sub->getQuery())
            ->select(DB::raw("st.*,
               (stock_in - stock_out)                       as available_stock,
               l.name                                       as location_name,
               p.name                                       as product_name,
               pc.price                                     as purchase_price,
               pc.sale_price                                as sale_price,
               pc.product_id                                as sku,
               pc.title                                     as combination_name,
               #group_concat(pco.product_option_values__id) as combination_option_value_ids,
               group_concat(pov.name)                       as combination_option_values,
               group_concat(pol.name)                       as combination_option_value_labels"
            ))
            ->join("locations as l", "st.locations__id", "=", "l._id")
            ->join("product_combinations as pc", "st.product_combinations__id", "=", "pc._id")
            ->join("products as p", "pc.products__id", "=", "p._id")
            ->join("product_combinations_options as pco", "st.product_combinations__id", "=", "pco.product_combinations__id")
            ->leftJoin("product_option_values as pov", "pco.product_option_values__id", "=", "pov._id")
            ->leftJoin("product_option_labels as pol", "pov.product_option_labels__id", "=", "pol._id")
            ->groupBy('locations__id', 'st.product_combinations__id')->orderBy('p._id', 'desc');

        foreach ($clauses as $key => $value) $data->where($key, $value);

        return $data->get()->map(function ($stock) {
            $combinationOptions = [];
            $combinationOptionValues = explode(',', $stock->combination_option_values);
            $combinationOptionValueLabels = explode(',', $stock->combination_option_value_labels);
            foreach ($combinationOptionValues as $i => $value) {
                $label = $combinationOptionValueLabels[$i];
                $combinationOptions[] = "{$label}: $value";
            }
            $stock->combination = $stock->combination_name . ' (' . implode(' - ', $combinationOptions) . ')';
            return (object)[
                'product_name' => $stock->product_name,
                'location_name' => $stock->location_name,
                'sku' => $stock->sku,
                'combination' => $stock->combination,
                'purchase_price' => $stock->purchase_price,
                'sale_price' => $stock->sale_price,
                'available_stock' => $stock->available_stock
            ];
        });
    }

    /**
     * Export to PDV, CSV, etc
     * @param Request $request
     * @return string
     */
    public function export(Request $request, $type)
    {
        $time = time();
        switch ($type) {
            case 'csv':
                switch ($request->area_type) {
                    case 'page':
                        return $this->getStockStockForExport()
                            ->prepend([
                                'Product Name',
                                'Location Name',
                                'Sku',
                                'Combination',
                                'Purchase Price',
                                'Sale Price',
                                'Available Stock'
                            ])->downloadExcel("stock-{$time}.csv");
                    case 'product':
                        return $this->getStockStockForExport([
                            'p._id' => $request->key
                        ])->prepend([
                            'Product name',
                            'Location name',
                            'Sku',
                            'Combination',
                            'Purchase price',
                            'Sale price',
                            'Available stock'
                        ])->downloadExcel("stock-{$time}.csv");
                    case 'combination':
                        $keys = explode(',', $request->key);
                        $stock = $this->getStockStockForExport([
                            'st.product_combinations__id' => $keys[0],
                            'st.locations__id' => $keys[1]
                        ]);
                        $stock = isset($stock[0]) ? $stock[0] : null;
                        if ($stock) {
                            $collection = [];
                            foreach ($stock as $key => $value)
                                $collection[] = [
                                    ucfirst(str_replace('_', ' ', $key)),
                                    $value
                                ];
                            return collect($collection)->downloadExcel("stock-{$time}.csv");
                        }
                        return 'Combination not found';
                }
                break;
            case 'pdf':
                switch ($request->area_type) {
                    case 'page':
                        $inventory = $this->getStockStockForExport();
                        break;
                    case 'product':
                        $inventory = $this->getStockStockForExport(['p._id' => $request->key]);
                        break;
                    case 'combination':
                        $keys = explode(',', $request->key);
                        $inventory = $this->getStockStockForExport([
                            'st.product_combinations__id' => $keys[0],
                            'st.locations__id' => $keys[1]
                        ]);
                        break;
                }

                $inventory = $inventory->groupBy('product_name')
                    ->map(function ($stock) {
                        $totalProductQty = 0;
                        foreach ($stock as $stockData)
                            $totalProductQty += $stockData->available_stock;
                        return (object)[
                            'totalQty' => $totalProductQty,
                            'productInventory' => $stock->groupBy('location_name')
                                ->map(function ($inventory) {
                                    $totalQty = 0;
                                    foreach ($inventory as $inventoryData)
                                        $totalQty += $inventoryData->available_stock;
                                    return (object)[
                                        'totalQty' => $totalQty,
                                        'locationInventory' => $inventory
                                    ];
                                })
                        ];
                    });

                $pdf = PDF::loadView('inventory.pdf-export', compact('inventory'));
                return $pdf->download("stock-{$time}.pdf");
        }
    }
}
