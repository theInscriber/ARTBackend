<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Person extends Model
{

    protected $table = 'person';
    protected $primaryKey = 'person_id';

    const CREATED_AT = 'date_created';
    const UPDATED_AT = null;

    protected $fillable = ['gender', 'birthdate'];

    public function patient()
    {
        return $this->hasOne(Patient::class, 'person_id');
    }

    public function names()
    {
        return $this->hasMany(PersonName::class, 'person_id');
    }

    public function addresses()
    {
        return $this->hasMany(PersonAddress::class, 'person_id');
    }

    public function observations()
    {
        return $this->hasMany(Observation::class, 'person_id');
    }

    public function getPreferredNameAttribute()
    {
        return $this->names->first();
    }

    public function getPreferredAddressAttribute()
    {
        return $this->addresses->first();
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
        return 'person_id';
    }
}
