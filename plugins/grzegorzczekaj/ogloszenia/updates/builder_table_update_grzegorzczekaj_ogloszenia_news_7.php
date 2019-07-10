<?php namespace GrzegorzCzekaj\Ogloszenia\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateGrzegorzczekajOgloszeniaNews7 extends Migration
{
    public function up()
    {
        Schema::table('grzegorzczekaj_ogloszenia_news', function($table)
        {
            $table->renameColumn('publshed', 'published');
        });
    }
    
    public function down()
    {
        Schema::table('grzegorzczekaj_ogloszenia_news', function($table)
        {
            $table->renameColumn('published', 'publshed');
        });
    }
}
