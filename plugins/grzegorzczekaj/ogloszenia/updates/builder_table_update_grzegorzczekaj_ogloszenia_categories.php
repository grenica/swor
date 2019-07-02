<?php namespace GrzegorzCzekaj\Ogloszenia\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateGrzegorzczekajOgloszeniaCategories extends Migration
{
    public function up()
    {
        Schema::table('grzegorzczekaj_ogloszenia_categories', function($table)
        {
            $table->string('slug');
        });
    }
    
    public function down()
    {
        Schema::table('grzegorzczekaj_ogloszenia_categories', function($table)
        {
            $table->dropColumn('slug');
        });
    }
}
