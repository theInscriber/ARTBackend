<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;

class LocationResource extends Resource
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
            'object' => 'LocationResource',
            'locationID' => $this->location_id,
            'name' => $this->name,
            'description' => $this->description,
            'dateCreated' => $this->date_created
        ];
    }
}
