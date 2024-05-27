<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('phuong_an', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('cau_hoi_id');
            $table->text('noi_dung');
            $table->boolean('la_phuong_an_dung');
            $table->foreign('cau_hoi_id')->references('id')->on('cau_hoi')->onUpdate('cascade')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('phuong_an');
    }
};
