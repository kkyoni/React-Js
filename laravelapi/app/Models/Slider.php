<?php

namespace App\Models;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    use Notifiable;
    use SoftDeletes;

    protected $table = 'slider';
    protected $fillable = ['title','sub_title','description','image','status'];
}
