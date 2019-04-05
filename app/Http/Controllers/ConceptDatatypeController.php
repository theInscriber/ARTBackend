<?php

namespace App\Http\Controllers;


use App\Http\Resources\ConceptDatatypeResource;
use App\ConceptDatatype;

class ConceptDatatypeController extends Controller
{

    public function getAll()
    {
        $conceptDatatypes = ConceptDatatype::all();

        return ConceptDatatypeResource::collection($conceptDatatypes);
    }

    public function get(ConceptDatatype $conceptDatatype)
    {
        return new ConceptDatatypeResource($conceptDatatype);
    }
}
