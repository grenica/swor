<?php namespace GrzegorzCzekaj\Ogloszenia\Controllers;

use Backend\Classes\Controller;
use BackendMenu;

class News2 extends Controller
{
    public $implement = [        'Backend\Behaviors\ListController',        'Backend\Behaviors\ReorderController'    ];
    
    public $listConfig = 'config_list.yaml';
    public $reorderConfig = 'config_reorder.yaml';

    public function __construct()
    {
        parent::__construct();
    }
}
