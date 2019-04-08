<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Village extends Model
{
    protected $table = 'village';
    protected $primaryKey = 'village_id';

    const CREATED_AT = 'date_created';
    const UPDATED_AT = null;

    protected $fillable = ['name'];

    public function villages()
    {
        return $this->hasMany(Village::class, 'village_id');
    }

    public function traditionalAuthority()
    {
        return $this->belongsTo(TraditionalAuthority::class, 'traditional_authority_id');
    }


    public function getRouteKey()
    {
        return 'village_id';
    }
}
