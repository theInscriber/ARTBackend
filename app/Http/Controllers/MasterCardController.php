<?php

namespace App\Http\Controllers;


use App\Http\Resources\MasterCardResource;
use App\MasterCard;

class MasterCardController extends Controller
{

    public function getAll()
    {
        $masterCards = MasterCard::with('encounterTypes.concepts')->get();

        return MasterCardResource::collection($masterCards);
    }

    public function get(MasterCard $masterCard)
    {
        $masterCard->load('encounterTypes.concepts');
        
        return new MasterCardResource($masterCard);
    }
}
