<?php namespace GrzegorzCzekaj\Dynamiclink\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateGrzegorzczekajDynamiclinkLinks extends Migration
{
    public function up()
    {
        Schema::create('grzegorzczekaj_dynamiclink_links', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('backgr_color_start')->nullable();
            $table->string('backgr_color_end')->nullable();
            $table->string('backgr_image')->nullable();
            $table->string('name');
            $table->timestamp('deleted_at')->nullable();
            $table->smallInteger('posision');
            $table->smallInteger('check');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('grzegorzczekaj_dynamiclink_links');
    }
}
