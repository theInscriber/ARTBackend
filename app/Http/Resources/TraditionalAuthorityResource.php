<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;

class TraditionalAuthorityResource extends Resource
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
            'object' => 'TraditionalAuthorityResource',
            'traditionalAuthorityID' => $this->traditional_authority_id,
            'name' => $this->name,
            'dateCreated' => $this->date_created,
            'district' => new DistrictResource($this->district)
        ];
    }
}
