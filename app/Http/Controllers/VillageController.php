<?php

namespace App\Http\Controllers;

use App\Http\Resources\VillageResource;
use App\Village;

class VillageController extends Controller
{

    public function getAll()
    {
        $village = Village::all();

        return VillageResource::collection($village);
    }

    public function get(Village $village)
    {
        return new VillageResource($village);
    }
}
