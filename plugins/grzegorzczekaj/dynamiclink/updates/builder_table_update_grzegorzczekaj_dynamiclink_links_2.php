<?php namespace GrzegorzCzekaj\Dynamiclink\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateGrzegorzczekajDynamiclinkLinks2 extends Migration
{
    public function up()
    {
        Schema::table('grzegorzczekaj_dynamiclink_links', function($table)
        {
            $table->string('link', 100);
        });
    }
    
    public function down()
    {
        Schema::table('grzegorzczekaj_dynamiclink_links', function($table)
        {
            $table->dropColumn('link');
        });
    }
}
