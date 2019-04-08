<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('user_id');
            $table->string('username');
            $table->string('password');
            $table->string('avatar')->nullable();
            $table->enum('is_superuser', [0,1]);
            $table->rememberToken();
            $table->timestamps();

//            $table->unsignedInteger('person_id');
//
//            $table->foreign('person_id')
//                    ->references('person_id')
//                    ->on('persons')
//                    ->onDelete('cascade');

            $table->unique('username','username_unique');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
