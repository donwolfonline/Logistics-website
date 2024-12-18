<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class () extends Migration {
    public function up(): void
    {
        Schema::table('lg_services_translations', function (Blueprint $table) {
            $table->renameColumn('name', 'title');
        });
    }

    public function down(): void
    {
        Schema::table('lg_services_translations', function (Blueprint $table) {
            $table->renameColumn('title', 'name');
        });
    }
};
