<?php

namespace App\Http\Controllers;

use App\Http\Resources\LocationResource;
use App\Location;

class LocationController extends Controller
{

    public function getAll()
    {
        $location = Location::all();

        return LocationResource::collection($location);
    }

    public function get(Location $location)
    {
        return new LocationResource($location);
    }
}
