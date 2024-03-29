<?php

namespace App\Http\Resources;

use App\ConceptDatatype;
use App\ConceptName;
use Illuminate\Http\Resources\Json\Resource;

class ConceptResource extends Resource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'object' => 'ConceptResource',
            'conceptID' => $this->concept_id,
            'name' => new ConceptNameResource($this->name),
            'datatype' => new ConceptDatatypeResource($this->datatype),
            'dateCreated' => $this->date_created,
            'uuid' => $this->uuid
        ];
    }
}
