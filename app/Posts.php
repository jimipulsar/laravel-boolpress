<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use \App\Posts;

class Posts extends Model
{
	// public $timestamps = false;
	public $table = "posts";
	protected $fillable = [
	'title',
	'author',
	'content',
	'category_id',
	'created_at'
	];

	public function category()
	{
		return $this->belogsTo('App,Category', 'category_id');
	}
}
