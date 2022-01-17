<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCryptoWalletTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('crypto_wallet', function (Blueprint $table) {
            $table->bigIncrements('id_wallet');
            $table->string('nama_wallet');
            $table->float('ukuran_aplikasi');
            $table->integer('nft_showcase');
            $table->float('rating');
            $table->integer('platform_support');
            $table->integer('total_user_install');
            $table->date('last_update_data');
            $table->string('link_playstore');
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
        Schema::dropIfExists('crypto_wallet');
    }
}
