<?php namespace GrzegorzCzekaj\Dynamiclink\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateGrzegorzczekajDynamiclinkLinks extends Migration
{
    public function up()
    {
        Schema::table('grzegorzczekaj_dynamiclink_links', function($table)
        {
            $table->integer('posision')->nullable(false)->unsigned(false)->default(null)->change();
        });
    }
    
    public function down()
    {
        Schema::table('grzegorzczekaj_dynamiclink_links', function($table)
        {
            $table->smallInteger('posision')->nullable(false)->unsigned(false)->default(null)->change();
        });
    }
}
