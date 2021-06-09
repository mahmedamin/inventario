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

    /**
     * Export to PDV, CSV, etc
     * @param $type
     */
    public function export(Request $request, $type)
    {
        switch ($type) {
            case 'csv':
                switch ($request->area_type) {
                    case 'page':
                        $processReaction = $this->inventoryEngine->prepareList()['data'];
                        if (empty($processReaction['invetoryData']))
                            return 'Data not available.';
                        foreach ($processReaction['invetoryData'] as $product) {
                            foreach ($product['combinationData'] as $location => $combinationData) {
                                $totalStock = $combinationData['totalStock'];
                                unset($combinationData['totalStock']);
                                foreach ($combinationData['totalStock'] as $combination){
                                    $productCombinations='';
                                    foreach ($combination['combinations'] as $combinationOptions){
                                        foreach ($combinationOptions as $combinationOption){
                                            //
                                        }
                                    }
                                }
                            }
                        }

                }
        }
    }
}
