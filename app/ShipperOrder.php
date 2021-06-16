<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ShipperOrder extends Model
{
    protected $table = 'shipper_order';

    protected $fillable = [
        'shipper_id',
        'order_id'
    ];

}
