<?php namespace GrzegorzCzekaj\Ogloszenia\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateGrzegorzczekajOgloszeniaNews extends Migration
{
    public function up()
    {
        Schema::create('grzegorzczekaj_ogloszenia_news', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('name');
            $table->text('desc');
            $table->timestamp('created_at')->nullable();
            $table->timestamp('updated_at')->nullable();
            $table->boolean('isnew');
            $table->timestamp('deleted_at')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('grzegorzczekaj_ogloszenia_news');
    }
}
