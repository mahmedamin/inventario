<?php
/*
* TaxPreset.php - Model file
*
* This file is part of the TaxPreset component.
*-----------------------------------------------------------------------------*/

namespace App\Yantrana\Components\TaxPreset\Models;

use App\Yantrana\Base\BaseModel;
use App\Yantrana\Components\Tax\Models\TaxModel;

class TaxPresetModel extends BaseModel
{
    /**
     * @var  string $table - The database table used by the model.
     */
    protected $table = "tax_presets";

    /**
     * @var  array $casts - The attributes that should be casted to native types.
     */
    protected $casts = [];

    /**
     * @var  array $fillable - The attributes that are mass assignable.
     */
    protected $fillable = [];

    /**
     * Establish relationship with option tax preset & taxes
     *
     * @return information
     *-----------------------------------------------------------------------*/
    public function taxes()
    {
        return $this->hasMany(TaxModel::class, 'tax_presets__id');
    }
}
