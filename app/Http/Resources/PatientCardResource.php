<?php

namespace App\Http\Resources;


use Illuminate\Http\Resources\Json\Resource;

class PatientCardResource extends Resource
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
            'object' => 'PatientCard',
            'patientCardID' => $this->patient_card_id,
            'patient' => new PatientResource($this->patient),
            'masterCard' => new MasterCardResource($this->masterCard),
            'dateCreated' => (string)$this->date_created,
            'uuid' => $this->uuid
        ];
    }
}
