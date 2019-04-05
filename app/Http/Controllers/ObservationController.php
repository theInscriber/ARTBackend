<?php

namespace App\Http\Controllers;

use App\Http\Resources\ObservationResource;
use App\Http\Services\ObservationService;
use App\Http\Services\PersonService;
use App\Observation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;

class ObservationController extends Controller
{

    public function getAll()
    {
        $observations = Observation::all();

        return ObservationResource::collection($observations);
    }

    public function get(Observation $observation)
    {
        return new ObservationResource($observation);
    }

    public function store(Request $request)
    {
        $data = $request->all();

        App::make(ObservationService::class)->process($data);

        return response()->json([
            'data' => [
                'message' => 'Observations Synced'
            ]
        ], 200);
    }

    public function search(Request $request)
    {
        $searchParam = $request->search;

        $observations = App::make(ObservationService::class)->search($searchParam);

        return ObservationResource::collection($observations);
    }

    public function getCards($observationID)
    {
        $observation = App::make(ObservationService::class)->findByID($observationID);

        $observationCards =  $observation->observationCards;

        return ObservationCardResource::collection($observationCards);
    }
}
