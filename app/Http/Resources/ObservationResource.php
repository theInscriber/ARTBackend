<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;
use phpDocumentor\Reflection\Types\Float_;

class ObservationResource extends Resource
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
            'object' => 'ObservationResource',
            'observationID' => $this->obs_id,
            'patientID' => $this->patient_id,
            'person' => $this->person,
            'concept' => new ConceptResource($this->concept),
            'encounter' => new EncounterResource($this->encounter),
            'obsDatetime' => $this->obs_datetime,
            'value' => $this->value,
            'dateCreated' => (string)$this->date_created,
            'uuid' => $this->uuid
        ];
    }
}
