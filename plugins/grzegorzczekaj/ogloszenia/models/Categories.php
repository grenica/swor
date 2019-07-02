<?php namespace GrzegorzCzekaj\Ogloszenia\Models;

use Model;

/**
 * Model
 */
class Categories extends Model
{
    use \October\Rain\Database\Traits\Validation;
    

    /**
     * @var string The database table used by the model.
     */
    public $table = 'grzegorzczekaj_ogloszenia_categories';

    public $belongsToMany = [
        'news' =>[
            'Grzegorzczekaj\Ogloszenia\Models\News',
            'table' => 'grzegorzczekaj_ogloszenia_categories_news'
            ]
    ];

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];
}
