<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PersonAddress extends Model
{

    protected $table = 'person_address';
    protected $primaryKey = 'person_address_id';

    const CREATED_AT = 'date_created';
    const UPDATED_AT = null;

    protected $fillable = [
        'address1',
        'address2',
        'city_village',
        'state_province',
        'postal_code',
        'country',
        'latitude',
        'longitude',
        'county_district',
        'neighborhood_cell',
        'region',
        'subregion',
        'township_division'
    ];

    public function person()
    {
        return $this->belongsTo(Person::class, 'person_id');
    }

    public static function boot()
    {
        parent::boot();

        static::creating(function ($instance) {
            $instance->uuid = uuid4();
        });
    }

    public function getRouteKey()
    {
        return 'uuid';
    }
}
