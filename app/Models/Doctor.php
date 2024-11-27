<?php

namespace App\Models;

use Laravel\Sanctum\HasApiTokens;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class Doctor extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable; 
    protected $guard = 'doctor';

    protected $fillable = [
        'name',
        'email',
        'password',
        'specialist_id'
    ];

    protected $hidden = [
        'password',
        'remember_token',
    ];

    protected $casts = [
        'password' => 'hashed',
    ];

    public function specialist(){
        return $this->belongsTo(Specialist::class);
    }

    public function appointment(){
        return $this->hasMany(Appointment::class);
    }
}