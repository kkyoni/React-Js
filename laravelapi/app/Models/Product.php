<?php

namespace App\Models;

use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use Notifiable;
    use SoftDeletes;

    protected $table = 'product';
    protected $fillable = ['category_id','title','image','sub_title','price','description','color'];

    public function Category()
    {
        return $this->hasOne('App\Models\Category','id','category_id');
    }
}
