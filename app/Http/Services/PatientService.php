<?php

namespace App\Http\Services;


use App\Patient;
use App\Person;

class PatientService
{

    public function findByID($id)
    {
        return Patient::find($id);
    }

    public function findByARTRegNum($patient)
    {
        //return Patient::where
    }

    public function search($searchParam)
    {
        return Patient::orderBy('date_created', 'desc')
            ->whereHas('person', function ($query) use ($searchParam){
                $query->whereHas('names', function ($query) use ($searchParam){
                    $query->where('given_name', 'like', '%'. $searchParam . '%')
                        ->orWhere('middle_name', 'like', '%'. $searchParam . '%')
                        ->orWhere('family_name', 'like', '%'. $searchParam . '%');
                });
            })->get();
    }

    public function create(Person $person, $data)
    {
        $patient = new Patient;
        $patient->fill($data);
        $patient->person()->associate($person);

        $patient->save();

        return $patient;
    }

    public function update(Patient $patient, $data)
    {
        $patient->update($data);

        return $patient;
    }
}
