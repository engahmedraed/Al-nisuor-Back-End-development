<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSectionInstallmentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('section_installments', function (Blueprint $table) {
            $table->id();
            $table->string('department_id')->nullable();
            $table->string('first_batch')->nullable();
            $table->string('second_batch')->nullable();
            $table->string('third_batch')->nullable();
            $table->string('fourth_batch')->nullable();
            $table->string('study_type')->nullable();
            $table->string('stage')->nullable();
            $table->timestamp('created_at')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->timestamp('updated_at')->default(DB::raw('CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP'));
            $table->boolean('is_deleted')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('section_installments');
    }
}
