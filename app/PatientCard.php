<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PatientCard extends Model
{
    //
    protected $table = 'patient_card';
    protected $primaryKey = 'patient_card_id';

    const CREATED_AT = 'date_created';
    const UPDATED_AT = null;


    public function patient()
    {
        return $this->belongsTo(Patient::class, 'patient_id');
    }

    public function masterCard()
    {
        return $this->belongsTo(MasterCard::class, 'master_card_id');
    }

    public function encounters()
    {
        return $this->belongsToMany(Encounter::class, 'patient_card_map', 'patient_card_id', 'encounter_id');
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
