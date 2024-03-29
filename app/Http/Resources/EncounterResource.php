<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;

class EncounterResource extends Resource
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
            'object' => 'EncounterResource',
            'encounterID' => $this->encounter_id,
            'patient' => $this->patient,
            'encounterType' => $this->encounter_type,
            'dateCreated' => $this->date_created,
            'uuid' => $this->uuid
        ];
    }
}
