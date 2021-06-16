<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Shipping extends Model
{
    protected $table = 'tbl_shipping';

    protected $fillable = [
        'shipping_name',
        'shipping_name',
        'shipping_email',
        'shipping_address',
        'shipping_phone',
        'shipping_notes'
    ];

}
