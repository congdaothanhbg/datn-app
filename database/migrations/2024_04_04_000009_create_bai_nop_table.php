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
        Schema::create('bai_nop', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('lich_su_id');
            $table->unsignedBigInteger('cau_hoi_id');
            $table->unsignedBigInteger('phuong_an_id')->nullable();
            $table->foreign('lich_su_id')->references('id')->on('lich_su')->onUpdate('cascade')->onDelete('cascade');
            $table->foreign('cau_hoi_id')->references('id')->on('cau_hoi')->onUpdate('cascade')->onDelete('cascade');
            $table->foreign('phuong_an_id')->references('id')->on('phuong_an')->onUpdate('cascade')->onDelete('set null');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('ket_qua');
    }
};
