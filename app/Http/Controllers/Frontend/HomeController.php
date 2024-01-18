<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\AboutUs;
use App\Models\Article;
use App\Models\Book;
use App\Models\Consultant;
use App\Models\Course;
use App\Models\News;
use App\Models\Quotation;
use App\Models\Sample;
use App\Models\Service;
use Illuminate\Http\Request;
use App\Http\Controllers\Traits\MediaUploadingTrait;
use App\Models\Contact;
use App\Models\CService;
use App\Models\Joining;
use Spatie\MediaLibrary\MediaCollections\Models\Media;
use Symfony\Component\HttpFoundation\Response;

class HomeController extends Controller
{
    use MediaUploadingTrait;
    public function index(){
        $aboutUs = AboutUs::first(); 
        $news = News::orderBy('created_at','desc')->simplePaginate(3);
        $services = Service::with('category')->where('featured',1)->get();
        $cservices = CService::where('featured',1)->get();
        $main_header = true;
        return view('frontend.home',compact('aboutUs',
                                            'main_header',
                                            'news',
                                            'services','cservices'));
    }

    public function consultants(){
        $consultants = Consultant::orderBy('created_at','desc')->paginate(20); 
        return view('frontend.consultants',compact('consultants'));
    }

    public function contact(){
        $cservices = CService::get();
        return view('frontend.contact',compact('cservices'));
    }
    public function join_us(){
        return view('frontend.join_us');
    }
    public function reg_company(){
        return view('frontend.reg_company');
    }
    public function reg_user(){
        return view('frontend.reg_user');
    }
    public function team(){
        return view('frontend.team');
    }
    public function about(){
        $aboutUs = AboutUs::first(); 
        return view('frontend.about',compact('aboutUs'));
    }

    public function news(){
        $news = News::orderBy('created_at','desc')->paginate(15);
        return view('frontend.news',compact('news'));
    }
    public function news_details($id){
        $raw = News::findOrFail($id);
        return view('frontend.news_details',compact('raw'));
    }

    public function service($id){
        $service = Service::findOrFail($id); 
        $other_services = Service::where('category_id',$service->category_id)->where('id','!=',$id)->take(10)->get();
        return view('frontend.service',compact('service','other_services'));
    }

    public function services($id){
        $cservice = CService::find($id);
        $services = Service::where('category_id',$id)->orderBy('created_at','desc')->paginate(15); 
        return view('frontend.services',compact('services','cservice'));
    }

    public function joining(Request $request){

        $joining = Joining::create($request->all()); 

        alert('تم بنجاح','تم أرسال طلبك إلي الأدارة وسوف يتم أرسال أيميل إلي '. $request->email .' بالرد قريبا','success')->autoClose(false);

        return redirect()->route('frontend.home');
    }
    
    public function contact_us(Request $request){
        Contact::create($request->all()); 

        alert('تم بنجاح','تم أرسال طلبك إلي الأدارة وسوف يتم أرسال أيميل إلي '. $request->email .' بالرد قريبا','success')->autoClose(false);

        return redirect()->route('frontend.home');
    
    }
    
    public function storeCKEditorImages(Request $request)
    { 

        $model         = new Joining();
        $model->id     = $request->input('crud_id', 0);
        $model->exists = true;
        $media         = $model->addMediaFromRequest('upload')->toMediaCollection('ck-media');

        return response()->json(['id' => $media->id, 'url' => $media->getUrl()], Response::HTTP_CREATED);
    }
}
