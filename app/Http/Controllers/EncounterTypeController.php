<?php

namespace App\Http\Controllers;


use App\EncounterType;
use App\Http\Resources\EncounterTypeResource;

class EncounterTypeController extends Controller
{

    public function getAll()
    {
        $encounterTypes = EncounterType::all();

        return EncounterTypeResource::collection($encounterTypes);
    }

    public function get(EncounterType $encounterType)
    {
        return new EncounterTypeResource($encounterType);
    }
}
