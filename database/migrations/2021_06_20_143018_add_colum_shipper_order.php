<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumShipperOrder extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('shipper_order', function (Blueprint $table) {
            //
            $table->text('note')->nullable();
            $table->renameColumn('id', 'id_shipper_order');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('shipper_order', function (Blueprint $table) {
            $table->dropColumn('note');
            $table->renameColumn('id_shipper_order', 'id');
        });
    }
}
