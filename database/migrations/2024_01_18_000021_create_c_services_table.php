<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCServicesTable extends Migration
{
    public function up()
    {
        Schema::create('c_services', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->boolean('featured')->default(0)->nullable();
            $table->unsignedBigInteger('parent_id')->nullable();
            $table->foreign('parent_id', 'parent_fk_9422227')->references('id')->on('c_services');
            $table->timestamps();
            $table->softDeletes();
        });
    }
}
