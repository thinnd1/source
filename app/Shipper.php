<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Shipper extends Model
{
    protected $table = 'tbl_shippers';

    protected $fillable = [
        'shipper_name',
        'shipper_phone',
        'shipper_email',
        'password'
    ];


}
