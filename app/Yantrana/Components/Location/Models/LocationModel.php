<?php
/*
* Location.php - Model file
*
* This file is part of the Location component.
*-----------------------------------------------------------------------------*/

namespace App\Yantrana\Components\Location\Models;

use App\Yantrana\Base\BaseModel;

class LocationModel extends BaseModel
{
    /**
     * @var  string $table - The database table used by the model.
     */
    protected $table = "locations";

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
