<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Region extends Model
{
    //

    protected $table = 'region';
    protected $primaryKey = 'region_id';

    const CREATED_AT = 'date_created';
    const UPDATED_AT = null;

    protected $fillable = ['name'];

    public function districts()
    {
        return $this->hasMany(District::class, 'region_id');
    }


    public function getRouteKey()
    {
        return 'region_id';
    }
}
