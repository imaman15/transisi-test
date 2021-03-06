<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employees extends Model
{
    use HasFactory;

    protected $table = 'employees';
    protected $primaryKey = 'id';

    protected $fillable = [
        'name',
        'company_id',
        'email'
    ];

    public function companies()
    {
        return $this->belongsTo(Companies::class, 'company_id', 'id');
    }
}
