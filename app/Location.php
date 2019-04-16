<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    protected $table = 'location';
    protected $primaryKey = 'location_id';

    const CREATED_AT = 'date_created';
    const UPDATED_AT = null;


    public function getRouteKey()
    {
        return 'location_id';
    }
}
