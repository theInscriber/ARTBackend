<?php

namespace App\Http\Controllers;


use App\Http\Resources\PatientStepResource;
use App\Http\Services\PatientService;
use App\Http\Services\PatientStepService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;

class PatientStepController extends Controller
{
    public function store(Request $request)
    {
        $this->validate($request, [
            'art_number' => 'required|unique:patient_step',
            'date' => 'sometimes|date',
            'step' => 'required',
            'site' => 'sometimes|nullable|string',
            'origin_destination' => 'sometimes|nullable',
            'patient' => 'required|exists:patient,patient_id'
        ]);

        $data = $request->all();

        $patient = App::make(PatientService::class)->findByID($data['patient']);
        $patientStep = App::make(PatientStepService::class)->create($patient, $data);

        return new PatientStepResource($patientStep);
    }
}
