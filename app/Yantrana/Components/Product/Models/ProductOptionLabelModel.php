<?php
/*
* ProductOptionLabelModel.php - Model file
*
* This file is part of the Product component.
*-----------------------------------------------------------------------------*/

namespace App\Yantrana\Components\Product\Models;

use App\Yantrana\Base\BaseModel;
use App\Yantrana\Components\Product\Models\ProductOptionValueModel;

class ProductOptionLabelModel extends BaseModel
{
    /**
     * @var  string $table - The database table used by the model.
     */
    protected $table = "product_option_labels";

    /**
     * @var  array $casts - The attributes that should be casted to native types.
     */
    protected $casts = [
        "_id" => "integer",
        "status" => "integer",
        "products__id" => "integer",
        "user_authorities__id" => "integer",
        "is_required" => "integer",
        "if_product_option_values__id" => "integer",
    ];

    /**
     * @var  array $fillable - The attributes that are mass assignable.
     */
    protected $fillable = [];

    /**
     * Establish relationship with option label & values data
     *
     * @return information
     *-----------------------------------------------------------------------*/
    public function optionValues()
    {
        return $this->hasMany(ProductOptionValueModel::class, 'product_option_labels__id');
    }
}
