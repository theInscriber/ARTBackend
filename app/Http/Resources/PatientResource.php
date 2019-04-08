<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;
use phpDocumentor\Reflection\Types\Float_;

class PatientResource extends Resource
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
            'object' => 'PatientResource',
            'patientID' => $this->patient_id,
            'artNumber' => $this->art_number,
            'tribe' => $this->tribe,
            'guardianName' => $this->guardian_name,
            'patientPhone' => $this->patient_phone,
            'guardianPhone' => $this->guardian_phone,
            'followUp' => $this->follow_up,
            'guardianRelation' => $this->guardian_relation,
            'person' => new PersonResource($this->person),
            'dateCreated' => (string)$this->date_created,
        ];
    }
}
