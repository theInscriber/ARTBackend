<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;

class VillageResource extends Resource
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
            'object' => 'VillageResource',
            'villageID' => $this->village_id,
            'name' => $this->name,
            'dateCreated' => $this->date_created
        ];
    }
}
