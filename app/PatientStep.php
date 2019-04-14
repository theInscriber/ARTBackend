<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PatientStep extends Model
{
    //
    protected $table = 'patient_step';
    protected $primaryKey = 'patient_step_id';

    const CREATED_AT = null;
    const UPDATED_AT = null;


    public function patient()
    {
        return $this->belongsTo(Patient::class, 'patient_id');
    }

    public function getRouteKey()
    {
        return 'patient_step_id';
    }

}
