<?php namespace GrzegorzCzekaj\Ogloszenia\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateGrzegorzczekajOgloszeniaCategoriesNews extends Migration
{
    public function up()
    {
        Schema::table('grzegorzczekaj_ogloszenia_categories_news', function($table)
        {
            $table->renameColumn('news_is', 'news_id');
        });
    }
    
    public function down()
    {
        Schema::table('grzegorzczekaj_ogloszenia_categories_news', function($table)
        {
            $table->renameColumn('news_id', 'news_is');
        });
    }
}
