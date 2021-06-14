<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>PDF</title>
    <link href="{{public_path('dist/css/vendor-second.css')}}" rel="stylesheet" type="text/css">
    <link href="{{public_path('dist/css/vendorlibs-first.css')}}" rel="stylesheet" type="text/css">
    <link href="{{public_path('dist/css/vendorlibs-jquery-typeahead.css')}}" rel="stylesheet" type="text/css">
    <link href="{{public_path('dist/css/vendorlibs-datatable-buttons.css')}}" rel="stylesheet" type="text/css">
    <link href="{{public_path('dist/css/vendorlibs-manage.css')}}" rel="stylesheet" type="text/css">
    <link href="{{public_path('dist/css/application.min.css')}}" rel="stylesheet" type="text/css">
</head>
<body>
<div>
    <div>
        @foreach($inventory as $productName => $inventoryData)
            <div class="card mb-4">
                <div class="card-holder mb-4 pb-4">
                    {{$productName}}
                    <span class="float-right">
                        <span>
                            <?= __tr('Total Stock at All Locations') ?>: <strong>{{$inventoryData->totalQty}}</strong>
                        </span>
                    </span>
                </div>
                <div class="mt-4 pt-4">
                    @foreach($inventoryData->productInventory as $locationName => $productInventory)
                        <table class="table">
                            <thead>
                            <tr>
                                <th colspan="6">
                                    <?= __tr('Location') ?>: {{$locationName}}
                                    <span class="float-right">
                                <span>
                                    <?= __tr('Total Stock') ?>: <strong>{{$productInventory->totalQty}}</strong>
                                </span>
                            </span>
                                </th>
                            </tr>
                            <tr>
                                <th><?= __tr('SKU') ?></th>
                                <th width="35%"><?= __tr('Product Combinations') ?></th>
                                <th class="text-right"><?= __tr('Purchase Price') ?></th>
                                <th class="text-right"><?= __tr('Selling Price') ?></th>
                                <th class="text-right"><?= __tr('Available In Stock') ?></th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($productInventory->locationInventory as $combination)
                                <tr>
                                    <td>
                                        {{$combination->sku}}
                                    </td>
                                    <td>
                                        {{$combination->combination}}
                                    </td>
                                    <td class="text-right">
                                        {{number_format($combination->purchase_price, 0)}}
                                    </td>
                                    <td class="text-right">
                                        {{number_format($combination->sale_price, 0)}}
                                    </td>
                                    <td class="text-right">
                                        <strong>
                                            {{number_format($combination->available_stock, 0)}}
                                        </strong>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    @endforeach
                </div>
            </div>
        @endforeach
    </div>
</div>
</body>
</html>