<?php
/*
* ProductOptionValueModel.php - Model file
*
* This file is part of the Product component.
*-----------------------------------------------------------------------------*/

namespace App\Yantrana\Components\Product\Models;

use App\Yantrana\Base\BaseModel;
use App\Yantrana\Components\Product\Models\ProductOptionLabelModel;

class ProductOptionValueModel extends BaseModel
{
    /**
     * @var  string $table - The database table used by the model.
     */
    protected $table = "product_option_values";

    /**
     * @var  array $casts - The attributes that should be casted to native types.
     */
    protected $casts = [
        "_id" => "integer",
        "status" => "integer",
        "product_option_labels__id" => "integer",
        "user_authorities__id" => "integer",
        "addon_price" => "float"
    ];

    /**
     * @var  array $fillable - The attributes that are mass assignable.
     */
    protected $fillable = [];

    /**
     * Establish relationship with product Option Label
     *
     * @return information
     *-----------------------------------------------------------------------*/
    public function productOptionLabel()
    {
        return $this->hasOne(ProductOptionLabelModel::class, '_id', 'product_option_labels__id');
    }
}
