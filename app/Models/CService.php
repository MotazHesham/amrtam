<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class CService extends Model
{
    use SoftDeletes, HasFactory;

    public $table = 'c_services';

    protected $dates = [
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    protected $fillable = [
        'name',
        'featured',
        'parent_id',
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    protected function serializeDate(DateTimeInterface $date)
    {
        return $date->format('Y-m-d H:i:s');
    }
    
    public function childs()
    {
        return $this->hasMany(CService::class, 'parent_id');
    }
    public function services()
    {
        return $this->hasMany(Service::class, 'category_id');
    }
    
    public function parent()
    {
        return $this->belongsTo(self::class, 'parent_id');
    }
}
