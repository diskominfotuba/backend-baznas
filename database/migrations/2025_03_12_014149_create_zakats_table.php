<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateZakatsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('zakats', function (Blueprint $table) {
            $table->id();
            $table->string('invoice');
            $table->unsignedInteger('category_id');
            $table->unsignedInteger('muzakki_id');
            $table->bigInteger('amount');
            $table->text('pray')->nullable();
            $table->string('struk')->nullable();
            $table->enum('status', array('pending', 'success', 'expired', 'failed'));
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('zakats');
    }
}
