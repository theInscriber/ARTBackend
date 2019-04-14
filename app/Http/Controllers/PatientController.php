<?php

namespace App\Http\Controllers;

use App\Http\Requests\PatientFormRequest;
use App\Http\Resources\PatientCardResource;
use App\Http\Resources\PatientResource;
use App\Http\Resources\PatientStepResource;
use App\Http\Services\PatientService;
use App\Http\Services\PersonService;
use App\Patient;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;

class PatientController extends Controller
{

    public function getAll()
    {
        $patients = Patient::all();

        return PatientResource::collection($patients);
    }

    public function get(Patient $patient)
    {
        return new PatientResource($patient);
    }

    public function store(Request $request)
    {
        $data = $request->all();

        $person = App::make(PersonService::class)->create($data);
        $patient = App::make(PatientService::class)->create($person, $data);

        return new PatientResource($patient);
    }

    public function update(Request $request, Patient $patient)
    {
        $data = $request->all();

        $person = App::make(PersonService::class)->update($patient->person, $data);
        $patient = App::make(PatientService::class)->create($patient, $data);

        return new PatientResource($patient);
    }

    public function search(Request $request)
    {
        $searchParam = $request->search;

        $patients = App::make(PatientService::class)->search($searchParam);

        return PatientResource::collection($patients);
    }

    public function getCards($patientID)
    {
        $patient = App::make(PatientService::class)->findByID($patientID);

        $patientCards =  $patient->patientCards;

        return PatientCardResource::collection($patientCards);
    }

    public function getSteps($patientID)
    {
        $patient = App::make(PatientService::class)->findByID($patientID);

        $patientSteps =  $patient->steps;

        return PatientStepResource::collection($patientSteps);
    }
}
