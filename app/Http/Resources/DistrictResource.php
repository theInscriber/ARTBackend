<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;

class DistrictResource extends Resource
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
            'object' => 'DistrictResource',
            'districtID' => $this->district_id,
            'name' => $this->name,
            'dateCreated' => $this->date_created,
            'region' => new RegionResource($this->region)
        ];
    }
}
