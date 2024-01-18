<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\MediaLibrary\MediaCollections\Models\Media;

class AboutUs extends Model implements HasMedia
{
    use SoftDeletes, InteractsWithMedia, HasFactory;

    public $table = 'about_uss';

    protected $appends = [
        'logo',
        'cv',
    ];

    public const SERVICE_SELECT = [
        1  => [
            'title' => 'خدمات الأعمال والافراد',
            'description' => '',
        ], 
        2  => [
            'title' => 'الإستثمار الأجنبي',
            'description' => '',
        ], 
        3  => [
            'title' => 'مستشاري',
            'description' => '',
        ], 
        4  => [
            'title' => 'وكالاتي',
            'description' => '',
        ], 
        5  => [
            'title' => 'خدمات السياحة',
            'description' => '',
        ], 
        6  => [
            'title' => 'خدمات الطلاب والطالبات',
            'description' => '<br> امر تم هي كمنصة الكترونية تخدم الدارسين الجامعيين وتوفر الوقت والجهد لهم وذألك بتسجيلهم لدى لجامعات المطلوبة 
                                <br> لنسهم في خلق بيئة تعليمية تفاعلية تساند الطالب والطالبات على تحقيق مستهدفاتهم العلمية بحسب حاجة المستفيد 
                                <br> باإلضافة لتوفير خدمات وطلبات اخرى',
        ], 
    ];

    protected $dates = [
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    protected $fillable = [
        'vision',
        'message',
        'morals',
        'manager_word',
        'email',
        'website',
        'phone_number',
        'phone_number_2',
        'address',
        'facebook',
        'instagram',
        'tiktok',
        'twitter',
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    protected function serializeDate(DateTimeInterface $date)
    {
        return $date->format('Y-m-d H:i:s');
    }

    public function registerMediaConversions(Media $media = null): void
    {
        $this->addMediaConversion('thumb')->fit('crop', 50, 50);
        $this->addMediaConversion('preview')->width(150)->height(90)->keepOriginalImageFormat();
        $this->addMediaConversion('preview2')->width(310)->height(90)->keepOriginalImageFormat(); 
    } 
    public function getLogoAttribute()
    {
        $file = $this->getMedia('logo')->last();
        if ($file) {
            $file->url       = $file->getUrl();
            $file->thumbnail = $file->getUrl('thumb');
            $file->preview   = $file->getUrl('preview');
            $file->preview2   = $file->getUrl('preview2');
        }

        return $file;
    } 

    public function getCvAttribute()
    {
        return $this->getMedia('cv')->last();
    }
}
