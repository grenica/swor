<?php namespace GrzegorzCzekaj\Ogloszenia\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateGrzegorzczekajOgloszeniaLinks extends Migration
{
    public function up()
    {
        Schema::create('grzegorzczekaj_ogloszenia_links', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('backgr_color_start')->nullable();
            $table->string('backgr_color_end')->nullable();
            $table->string('backgr_image')->nullable();
            $table->string('name');
            $table->smallInteger('position');
            $table->smallInteger('check');
            $table->string('link');
            $table->timestamp('deleted_at')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('grzegorzczekaj_ogloszenia_links');
    }
}
