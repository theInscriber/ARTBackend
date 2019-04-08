<?php

namespace App\Http\Controllers;

use App\Http\Resources\DistrictResource;
use App\Http\Resources\TraditionalAuthorityResource;
use App\District;

class DistrictController extends Controller
{

    public function getAll()
    {
        $district = District::all();

        return DistrictResource::collection($district);
    }

    public function get(District $district)
    {
        return new DistrictResource($district);
    }

    public function getTraditionalAuthorities(District $district)
    {
        return TraditionalAuthorityResource::collection($district->traditionalAuthorities);
    }
}
