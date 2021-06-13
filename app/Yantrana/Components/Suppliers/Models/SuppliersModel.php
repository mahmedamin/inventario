<?php
/*
* Suppliers.php - Model file
*
* This file is part of the Suppliers component.
*-----------------------------------------------------------------------------*/

namespace App\Yantrana\Components\Suppliers\Models;

use App\Yantrana\Base\BaseModel;

class SuppliersModel extends BaseModel
{
    /**
     * @var  string $table - The database table used by the model.
     */
    protected $table = "suppliers";

    /**
     * Does it has has Entity Ownership ID
     *
     * @var bool
     *----------------------------------------------------------------------- */
    protected $hasEoId = true;

    /**
     * @var  array $casts - The attributes that should be casted to native types.
     */
    protected $casts = [];

    /**
     * @var  array $fillable - The attributes that are mass assignable.
     */
    protected $fillable = [];
}
