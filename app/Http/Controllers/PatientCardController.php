<?php

namespace App\Http\Controllers;


use App\Http\Requests\PatientFormRequest;
use App\Http\Resources\PatientCardResource;
use App\Http\Resources\PatientResource;
use App\Http\Services\MasterCardService;
use App\Http\Services\PatientCardService;
use App\Http\Services\PatientService;
use App\Http\Services\PersonService;
use App\MasterCard;
use App\Patient;
use App\PatientCard;
use http\Env\Response;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;

class PatientCardController extends Controller
{

    public function getAll()
    {
        $patientCards = PatientCard::all();

        return PatientCardResource::collection($patientCards);
    }

    public function get(PatientCard $patientCard)
    {
        return new PatientCardResource($patientCard);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'master-card' => 'required|exists:master_card,master_card_id',
            'patient' => 'required|exists:patient,patient_id'
        ]);

        $data = $request->all();

        $masterCard = App::make(MasterCardService::class)->findByID($data['master-card']);
        $patient = App::make(PatientService::class)->findByID($data['patient']);

        $patientCard = App::make(PatientCardService::class)->create($patient, $masterCard);

        return new PatientCardResource($patientCard);
    }

    public function update($patient)
    {

    }

    public function search(Request $request)
    {
        $searchParam = $request->search;

        $patients = App::make(PatientService::class)->search($searchParam);

        return PatientResource::collection($patients);
    }

    public function getData(Request $request, $patientCardID)
    {
        $data = $request->all();
        $patientCard = App::make(PatientCardService::class)->findByID($patientCardID);

        $patientData = App::make(PatientCardService::class)->getData($patientCard, $data);

        return response()->json([
            "data" => $patientData
        ]);
    }
}
