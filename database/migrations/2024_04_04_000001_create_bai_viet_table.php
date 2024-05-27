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
        Schema::create('bai_viet', function (Blueprint $table) {
            $table->id();
            $table->string('ten_bai_viet');
            $table->string('slug')->unique();
            $table->longText('noi_dung');
            $table->text('image')->nullable();
            $table->text('video')->nullable();
            $table->unsignedBigInteger('danh_muc_id')->nullable();
            $table->unsignedBigInteger('user_id')->nullable();
            $table->boolean('trang_thai')->default(1);
            $table->foreign('danh_muc_id')->references('id')->on('danh_muc')->onUpdate('cascade')->onDelete('set null');
            $table->foreign('user_id')->references('id')->on('users')->onUpdate('cascade')->onDelete('set null');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('bai_viet');
    }
};
