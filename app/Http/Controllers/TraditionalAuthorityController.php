<?php

namespace App\Http\Controllers;

use App\Http\Resources\TraditionalAuthorityResource;
use App\Http\Resources\VillageResource;
use App\TraditionalAuthority;

class TraditionalAuthorityController extends Controller
{

    public function getAll()
    {
        $traditionalAuthority = TraditionalAuthority::all();

        return TraditionalAuthorityResource::collection($traditionalAuthority);
    }

    public function get(TraditionalAuthority $traditionalAuthority)
    {
        return new TraditionalAuthorityResource($traditionalAuthority);
    }

    public function getVillages(TraditionalAuthority $traditionalAuthority)
    {
        return VillageResource::collection($traditionalAuthority->villages);
    }
}
