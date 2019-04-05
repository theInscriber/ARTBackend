<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MasterCardMap extends Model
{
    //
    protected $table = 'master_card_map';


    public function masterCard()
    {
        return $this->belongsTo(MasterCard::class, 'master_card_id');
    }

    public function encounterType()
    {
        return $this->belongsTo(EncounterType::class, 'encounter_type_id');
    }

    public function concept()
    {
        return $this->belongsTo(Concept::class, 'concept_id');
    }

}
