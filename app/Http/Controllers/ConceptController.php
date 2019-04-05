<?php

namespace App\Http\Controllers;


use App\Concept;
use App\Http\Resources\ConceptResource;

class ConceptController extends Controller
{

    public function getAll()
    {
        $concepts = Concept::all();

        return ConceptResource::collection($concepts);
    }

    public function get(Concept $concept)
    {
        return new ConceptResource($concept);
    }
}
