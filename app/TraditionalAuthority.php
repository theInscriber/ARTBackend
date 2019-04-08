<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TraditionalAuthority extends Model
{
    //
    protected $table = 'traditional_authority';
    protected $primaryKey = 'traditional_authority_id';

    const CREATED_AT = 'date_created';
    const UPDATED_AT = null;

    protected $fillable = ['name'];

    public function villages()
    {
        return $this->hasMany(Village::class, 'traditional_authority_id');
    }

    public function district()
    {
        return $this->belongsTo(District::class, 'district_id');
    }


    public function getRouteKey()
    {
        return 'district_id';
    }
}
