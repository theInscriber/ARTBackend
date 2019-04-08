<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Patient extends Model
{
    protected $table = 'patient';
    protected $primaryKey = 'patient_id';

    const CREATED_AT = 'date_created';
    const UPDATED_AT = null;

    public $incrementing = false;

    protected $fillable = ['art_number', 'tribe', 'guardian_name', 'patient_phone','guardian_phone', 'follow_up', 'guardian_relation'];

    public function person()
    {
        return $this->belongsTo(Person::class, 'patient_id');
    }

    public function encounters()
    {
        return $this->hasMany(Encounter::class, 'patient_id');
    }

    public function patientCards()
    {
        return $this->hasMany(PatientCard::class, 'patient_id');
    }

    public function observations()
    {
        return $this->hasMany(Observation::class, 'patient_id');
    }

    public function getRouteKey()
    {
        return 'patient_id';
    }


}
