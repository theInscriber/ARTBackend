<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePatientStepTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('patient_step', function (Blueprint $table) {
            $table->increments('patient_step_id');
            $table->integer('patient_id')->unsigned();
            $table->date('date');
            $table->string('site');
            $table->string('step');
            $table->string('origin_destination')->nullable();
            $table->string('art_number')->unique();

            $table->foreign('patient_id')
                ->references('person_id')
                ->on('person')
                ->onDelete('cascade')
                ->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('patient_step');
    }
}
