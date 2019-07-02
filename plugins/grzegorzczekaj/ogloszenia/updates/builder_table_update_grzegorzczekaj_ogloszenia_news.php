<?php namespace GrzegorzCzekaj\Ogloszenia\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateGrzegorzczekajOgloszeniaNews extends Migration
{
    public function up()
    {
        Schema::table('grzegorzczekaj_ogloszenia_news', function($table)
        {
            $table->text('slug');
            $table->increments('id')->unsigned(false)->change();
            $table->string('name')->change();
        });
    }
    
    public function down()
    {
        Schema::table('grzegorzczekaj_ogloszenia_news', function($table)
        {
            $table->dropColumn('slug');
            $table->increments('id')->unsigned()->change();
            $table->string('name', 191)->change();
        });
    }
}
