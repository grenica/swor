<?php namespace GrzegorzCzekaj\Ogloszenia\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateGrzegorzczekajOgloszeniaNews5 extends Migration
{
    public function up()
    {
        Schema::table('grzegorzczekaj_ogloszenia_news', function($table)
        {
            $table->renameColumn('autor', 'author');
        });
    }
    
    public function down()
    {
        Schema::table('grzegorzczekaj_ogloszenia_news', function($table)
        {
            $table->renameColumn('author', 'autor');
        });
    }
}
