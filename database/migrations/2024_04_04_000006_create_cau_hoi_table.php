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
        Schema::create('cau_hoi', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('khoa_hoc_id');
            $table->unsignedBigInteger('de_thi_id')->nullable();
            $table->unsignedTinyInteger('thu_tu');
            $table->text('noi_dung');
            $table->text('hinh_anh')->nullable();
            $table->boolean('la_cau_diem_liet');
            $table->foreign('khoa_hoc_id')->references('id')->on('khoa_hoc')->onUpdate('cascade')->onDelete('restrict');
            $table->foreign('de_thi_id')->references('id')->on('de_thi')->onUpdate('cascade')->onDelete('set null');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('cau_hoi');
    }
};
