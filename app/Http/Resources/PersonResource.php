<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;

class PersonResource extends Resource
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
            'object' => 'PersonResource',
            'person_id' => $this->person_id,
            'personName' => [
                'prefix' => $this->preferredName->prefix,
                'given' => $this->preferredName->given_name,
                'middle' => $this->preferredName->middle_name,
                'family' => $this->preferredName->family_name,
            ],
            'personAddress' => [
                'address1' => $this->preferredAddress->address1,
                'address2' => $this->preferredAddress->address2,
                'cityVillage' => $this->preferredAddress->city_village,
                'stateProvince' => $this->preferredAddress->state_province,
                'postalCode' => $this->preferredAddress->postal_code,
                'country' => $this->preferredAddress->country,
                'latitude' => $this->preferredAddress->latitude,
                'longitude' => $this->preferredAddress->longitude,
                'countyDistrict' => $this->preferredAddress->county_district,
                'neighborhoodCell' => $this->preferredAddress->neighborhood_cell,
                'region' => $this->preferredAddress->region,
                'subregion' => $this->preferredAddress->subregion,
                'townshipDivision' => $this->preferredAddress->township_division,
            ],
            'gender' => $this->gender,
            'birthdate' => (string)$this->birthdate,
            'birthdateEstimated' => $this->birthdate_estimated,
            'dead' => $this->dead,
            'deathDate' => $this->death_date,
            'causeOfDeath' => $this->cause_of_death,

            'dateCreated' => $this->date_created,
            'uuid' => $this->uuid
        ];
    }
}
