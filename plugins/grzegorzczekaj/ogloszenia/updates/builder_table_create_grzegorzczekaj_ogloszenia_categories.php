<?php namespace GrzegorzCzekaj\Ogloszenia\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateGrzegorzczekajOgloszeniaCategories extends Migration
{
    public function up()
    {
        Schema::create('grzegorzczekaj_ogloszenia_categories', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('category');
            $table->timestamp('created_at')->nullable();
            $table->timestamp('updated_at')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('grzegorzczekaj_ogloszenia_categories');
    }
}
