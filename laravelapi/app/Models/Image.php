<?php
namespace App\Models;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    use Notifiable;

    protected $table = 'images';
    protected $fillable = ['image'];
}

