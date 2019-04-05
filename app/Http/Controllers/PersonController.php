<?php

namespace App\Http\Controllers;


use App\Http\Resources\PersonResource;
use App\Person;

class PersonController extends Controller
{

    public function getAll()
    {
        $people = Person::all();

        return PersonResource::collection($people);
    }

    public function get(Person $person)
    {
        return new PersonResource($person);
    }
}
