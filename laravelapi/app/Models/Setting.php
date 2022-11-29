<?php

namespace App\Models;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class Setting extends Model{
    use Notifiable;
    use SoftDeletes;
    protected $table = 'settings';   
    protected $fillable = [
    'code','type','label','value','hidden'
    ];
}
