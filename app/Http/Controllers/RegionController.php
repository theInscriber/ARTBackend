<?php

namespace App\Http\Controllers;

use App\Http\Resources\DistrictResource;
use App\Http\Resources\RegionResource;
use App\Region;

class RegionController extends Controller
{

    public function getAll()
    {
        $region = Region::all();

        return RegionResource::collection($region);
    }

    public function get(Region $region)
    {
        return new RegionResource($region);
    }

    public function getDistricts(Region $region)
    {
        return DistrictResource::collection($region->districts);
    }
}
