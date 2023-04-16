<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddCnpjAndEinInUsers extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('mp_stores', function (Blueprint $table) {
            $table->string('name_business')->nullable();
            $table->string('ein')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('mp_stores', function (Blueprint $table) {
            if (Schema::hasColumn('mp_stores', 'name_business')) {
                $table->dropColumn('name_business');
            }
            if (Schema::hasColumn('mp_stores', 'ein')) {
                $table->dropColumn('ein');
            }
        });
    }
}
