<?php namespace GrzegorzCzekaj\Ogloszenia\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateGrzegorzczekajOgloszeniaNews4 extends Migration
{
    public function up()
    {
        Schema::table('grzegorzczekaj_ogloszenia_news', function($table)
        {
            $table->string('autor', 50);
        });
    }
    
    public function down()
    {
        Schema::table('grzegorzczekaj_ogloszenia_news', function($table)
        {
            $table->dropColumn('autor');
        });
    }
}
