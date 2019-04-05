<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;

class EncounterTypeResource extends Resource
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
            'object' => 'EncounterTypeResource',
            'encounterTypeID' => $this->encounter_type_id,
            'name' => $this->name,
            'description' => $this->description,
            'concepts' => ConceptResource::collection($this->whenLoaded('concepts')),
            'dateCreated' => $this->date_created,
            'uuid' => $this->uuid
        ];
    }
}
