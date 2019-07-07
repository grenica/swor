<?php namespace GrzegorzCzekaj\Ogloszenia\Models;

use Model;
use BackendAuth;

/**
 * Model
 */
class News extends Model
{
    use \October\Rain\Database\Traits\Validation;
    
    use \October\Rain\Database\Traits\SoftDelete;

    protected $dates = ['deleted_at'];


    /**
     * @var string The database table used by the model.
     */
    public $table = 'grzegorzczekaj_ogloszenia_news';

    public $belongsToMany = [
        'categories' =>[
            'Grzegorzczekaj\Ogloszenia\Models\Categories',
            'table' => 'grzegorzczekaj_ogloszenia_categories_news'
            ]
    ];
    /**
     * @var array Validation rules
     */
    public $rules = [
    ];

    public function beforeSave() {
         $user = BackendAuth::getUser(); 
         $this->author_id = $user->id; 
         $this->author = $user->first_name.' '.$user->last_name;
         }
}
