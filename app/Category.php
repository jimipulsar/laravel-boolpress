<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use \App\Category;

class Category extends Model
{
    public $fillable = ['name'];
		protected $table = "categories";
}
