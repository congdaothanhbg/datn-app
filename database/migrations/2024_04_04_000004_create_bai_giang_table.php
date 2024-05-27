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
        Schema::create('bai_giang', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('khoa_hoc_id');
            $table->unsignedInteger('thu_tu');
            $table->string('ten_bai_giang');
            $table->string('slug')->unique();
            $table->longText('noi_dung');
            $table->text('hinh_anh');
            $table->text('video');
            $table->boolean('trang_thai')->default(1);
            $table->foreign('khoa_hoc_id')->references('id')->on('khoa_hoc')->onUpdate('cascade')
            ->onDelete('restrict');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('bai_giang');
    }
};
