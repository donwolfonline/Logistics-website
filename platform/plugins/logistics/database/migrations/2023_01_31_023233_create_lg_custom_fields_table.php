<?php

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Logistics\Models\CustomField;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class () extends Migration {
    public function up(): void
    {
        Schema::create('lg_custom_fields', function (Blueprint $table) {
            $table->id();
            $table->nullableMorphs('author');
            $table->string('name', 255);
            $table->string('placeholder')->nullable();
            $table->boolean('required')->default(false);
            $table->string('type', 60);
            $table->integer('order')->default(999);
            $table->string('status')->default(BaseStatusEnum::PUBLISHED);
            $table->timestamps();
        });

        Schema::create('lg_custom_field_options', function (Blueprint $table) {
            $table->id();
            $table->foreignIdFor(CustomField::class, 'custom_field_id')->index();
            $table->string('label')->nullable();
            $table->string('value');
            $table->integer('order')->default(999);
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('lg_custom_fields');
        Schema::dropIfExists('lg_custom_field_options');
    }
};
