<?php

namespace App\Http\Controllers;

use App\Models\Tag;
use App\Models\News;
use App\Models\Social;
use App\Models\Image;
use App\Models\TagsNews;
use App\Helpers\Utilities;
use Illuminate\Http\Request;
use App\Repository\TagRepository;
use App\Repository\NewsRepository;
use App\Repository\SocialRepository;

class NewsController extends Controller
{

    private $SocialRepository;
    private $TagsRepository;
    private $NewsRepository;
    public function __construct()
    {
        $this->SocialRepository = new SocialRepository(new Social());
        $this->TagsRepository = new TagRepository(new Tag());
        $this->NewsRepository = new NewsRepository(new News());
        $this->middleware('Rules:admin', ['only' => ['store', 'update', 'destroy']]);
    }

    //all news data
    public function index(Request $request)
    {
       //validations
       $request->validate([
           'skip' => 'Integer',
           'take' => 'required|Integer'
       ]);

        //parameters
        $relations = ['user','department'];
        $filter = ['ar_title','ar_description','ar_sub_description','en_title','en_description','en_sub_description','views', 'department_id', 'tags.id','is_slider'];
        $take = $request->take;
        $skip = ($request->skip == null)? 0:$request->skip * $take;
        $lang = $request->header('Accept-Language');
        // if(!in_array($lang, ['en', 'ar']) && $lang != null){
        //    $lang = 'ar';getSlider
        // }
        
        //Processing
        $response = $this->NewsRepository->getListData($skip, $take, $relations, $filter);
        if($lang == 'en'){
            $dataItem =  $response['items']->map(function($item){
                $data['id'] = $item->id;
                $data['title'] = $item->en_title;
                $data['description'] = $item->en_description;
                $data['sub_description'] = $item->en_sub_description;
                $data['image'] = $item->image;
                $data['views'] = $item->views;
                $data['comment_count'] = $item->comment_count;
                $data['user_id'] = $item->user_id;
                $data['department_id'] = $item->department_id;
                $data['is_slider'] = $item->is_slider;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                if(!empty($item->user)){
                  $data['user'] = [
                      'id' => $item->user->id,
                     'full_name'=> $item->user->full_name,
                     'email'=> $item->user->email,
                     'phone'=> $item->user->phone,
                     'image'=> $item->user->image,
                    ];
                }else{
                  $data['user']=[];
                }
                if(!empty($item->department)){
                  $data['department'] = [
                    'id' => $item->department->id,
                    'name'=> $item->department->en_name,
                    'link'=> $item->department->link,
                    ];
                }else{
                  $data['department']=[];
                }
                return $data;
          });
          return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }elseif($lang == 'ar'){
            $dataItem =  $response['items']->map(function($item){
                $data['id'] = $item->id;
                $data['title'] = $item->ar_title;
                $data['description'] = $item->ar_description;
                $data['sub_description'] = $item->ar_sub_description;
                $data['image'] = $item->image;
                $data['views'] = $item->views;
                $data['comment_count'] = $item->comment_count;
                $data['user_id'] = $item->user_id;
                $data['department_id'] = $item->department_id;
                $data['is_slider'] = $item->is_slider;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                if(!empty($item->user)){
                $data['user'] = [
                    'id' => $item->user->id,
                    'full_name'=> $item->user->full_name,
                    'email'=> $item->user->email,
                    'phone'=> $item->user->phone,
                    'image'=> $item->user->image,
                    ];
                }else{
                $data['user']=[];
                }
                if(!empty($item->department)){
                  $data['department'] = [
                    'id' => $item->department->id,
                    'name'=> $item->department->ar_name,
                    'link'=> $item->department->link,
                    ];
                }else{
                  $data['department']=[];
                }
                return $data;
            });
            return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }
        
        //Response
        return Utilities::wrap($response, 200);
    }

    //all news data
    public function getSliderNews(Request $request)
    {
       //validations
       $request->validate([
           'skip' => 'Integer',
           'take' => 'required|Integer'
       ]);

        //parameters
        $relations = ['user', 'tags'];
        $filter = ['ar_title','ar_description','ar_sub_description','en_title','en_description','en_sub_description','views', 'department', 'tags.id'];
        $take = $request->take;
        $skip = ($request->skip == null)? 0:$request->skip * $take;
        $lang = $request->header('Accept-Language');
        // if(!in_array($lang, ['en', 'ar']) && $lang != null){
        //    $lang = 'ar';
        // }
        
        //Processing
        $response = $this->NewsRepository->getSlider($skip, $take, $relations, $filter);
        if($lang == 'en'){
            $dataItem =  $response['items']->map(function($item){
                $data['id'] = $item->id;
                $data['title'] = $item->en_title;
                $data['description'] = $item->en_description;
                $data['sub_description'] = $item->en_sub_description;
                $data['image'] = $item->image;
                $data['views'] = $item->views;
                $data['comment_count'] = $item->comment_count;
                $data['is_slider'] = $item->is_slider;
                $data['user_id'] = $item->user_id;
                $data['department_id'] = $item->department_id;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                if(!empty($item->user)){
                  $data['user'] = [
                      'id' => $item->user->id,
                     'full_name'=> $item->user->full_name,
                     'email'=> $item->user->email,
                     'phone'=> $item->user->phone,
                     'image'=> $item->user->image,
                    ];
                }else{
                  $data['user']=[];
                }
                if(!empty($item->department)){
                  $data['department'] = [
                    'id' => $item->department->id,
                    'name'=> $item->department->en_name,
                    'link'=> $item->department->link,
                    ];
                }else{
                  $data['department']=[];
                }
                return $data;
          });
          return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }elseif($lang == 'ar'){
            $dataItem =  $response['items']->map(function($item){
                  $data['id'] = $item->id;
                  $data['title'] = $item->ar_title;
                  $data['description'] = $item->ar_description;
                  $data['sub_description'] = $item->ar_sub_description;
                  $data['image'] = $item->image;
                  $data['views'] = $item->views;
                  $data['comment_count'] = $item->comment_count;
                  $data['is_slider'] = $item->is_slider;
                  $data['user_id'] = $item->user_id;
                  $data['department_id'] = $item->department_id;
                  $data['created_at'] = $item->created_at;
                  $data['updated_at'] = $item->updated_at;
                  if(!empty($item->user)){
                    $data['user'] = [
                        'id' => $item->user->id,
                       'full_name'=> $item->user->full_name,
                       'email'=> $item->user->email,
                       'phone'=> $item->user->phone,
                       'image'=> $item->user->image,
                      ];
                  }else{
                    $data['user']=[];
                  }
                  if(!empty($item->department)){
                    $data['department'] = [
                      'id' => $item->department->id,
                      'name'=> $item->department->ar_name,
                      'link'=> $item->department->link,
                    //   'logo' => $item->deparment->logo
                      ];
                  }else{
                    $data['department']=[];
                  }
                  return $data;
            });
            return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }
        
        //Response
        return Utilities::wrap($response, 200);
    }

    //all news data
    public function getAllSortView(Request $request)
    {
       //validations
       $request->validate([
           'skip' => 'Integer',
           'take' => 'required|Integer'
       ]);
       $lang = $request->header('Accept-Language');
    //    if(!in_array($lang, ['en', 'ar']) && $lang != null){
    //       $lang = 'ar';
    //    }

        //parameters
        $relations = ['tags', 'user'];
        $filter = ['ar_title','ar_description','ar_sub_description','en_title','en_description','en_sub_description','views', 'department'];
        $take = $request->take;
        $skip = ($request->skip == null)? 0:$request->skip * $take;
        
        //Processing
        $response = $this->NewsRepository->getListVeiw($skip, $take, $relations, $filter);
        if($lang == 'en'){
            $dataItem =  $response['items']->map(function($item){
                $data['id'] = $item->id;
                $data['title'] = $item->en_title;
                $data['description'] = $item->en_description;
                $data['sub_description'] = $item->en_sub_description;
                $data['image'] = $item->image;
                $data['views'] = $item->views;
                $data['comment_count'] = $item->comment_count;
                $data['user_id'] = $item->user_id;
                $data['department_id'] = $item->department_id;
                $data['is_slider'] = $item->is_slider;
                $data['tags'] = $item->tags;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                if(!empty($item->user)){
                  $data['user'] = [
                      'id' => $item->user->id,
                     'full_name'=> $item->user->full_name,
                     'email'=> $item->user->email,
                     'phone'=> $item->user->phone,
                     'image'=> $item->user->image,
                    ];
                }else{
                  $data['user']=[];
                }
                if(!empty($item->department)){
                  $data['department'] = [
                    'id' => $item->department->id,
                    'name'=> $item->department->en_name,
                    'link'=> $item->department->link,
                    ];
                }else{
                  $data['department']=[];
                }
                return $data;
          });
          return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }elseif($lang == 'ar'){
            $dataItem =  $response['items']->map(function($item){
                  $data['id'] = $item->id;
                  $data['title'] = $item->ar_title;
                  $data['description'] = $item->ar_description;
                  $data['sub_description'] = $item->ar_sub_description;
                  $data['image'] = $item->image;
                  $data['views'] = $item->views;
                  $data['comment_count'] = $item->comment_count;
                  $data['user_id'] = $item->user_id;
                  $data['department_id'] = $item->department_id;
                  $data['created_at'] = $item->created_at;
                  $data['updated_at'] = $item->updated_at;
                  $data['is_slider'] = $item->is_slider;
                  $data['tags'] = $item->tags;
                  if(!empty($item->user)){
                    $data['user'] = [
                        'id' => $item->user->id,
                       'full_name'=> $item->user->full_name,
                       'email'=> $item->user->email,
                       'phone'=> $item->user->phone,
                       'image'=> $item->user->image,
                      ];
                  }else{
                    $data['user']=[];
                  }
                  if(!empty($item->department)){
                    $data['department'] = [
                      'id' => $item->department->id,
                      'name'=> $item->department->ar_name,
                      'link'=> $item->department->link,
                    //   'logo' => $item->deparment->logo
                      ];
                  }else{
                    $data['department']=[];
                  }
                  return $data;
            });
            return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }
        
        //Response
        return Utilities::wrap($response, 200);
    }
     
    //get news by Id
    public function show(Request $request, $id)
    {
        $relations = ['comment', 'tags', 'user', 'department','images'];
        $lang = $request->header('Accept-Language');
        // if(!in_array($lang, ['en', 'ar']) && $lang != null){
        //    $lang = 'ar';
        // }

       //Processing
       $news = News::where('id', $id)->firstOrFail();
       $response = $this->NewsRepository->getByIdNews($id, $relations);
      //  return response()->json($response);

       if($lang == 'en'){
        $dataItem =  $response->map(function($item){
            $data['id'] = $item->id;
            $data['title'] = $item->en_title;
            $data['description'] = $item->en_description;
            $data['sub_description'] = $item->en_sub_description;
            $data['image'] = $item->image;
            $data['views'] = $item->views;
            $data['user_id'] = $item->user_id;
            $data['department_id'] = $item->department_id;
            $data['created_at'] = $item->created_at;
            $data['updated_at'] = $item->updated_at;
            $data['comment'] = $item->comment;
            $data['is_slider'] = $item->is_slider;
            $data['tags'] = $item->tags;
            if(!is_null($item->user)){
              $data['user'] = [
              'id' => $item->user->id,
              'full_name'=> $item->user->full_name,
              'email'=> $item->user->email,
              'phone'=> $item->user->phone,
              'image'=> $item->user->image,
              ];
          }else{
              $data['user']=[];
          }
            if(!empty($item->department)){
              $data['department'] = [
                'id' => $item->department->id,
                'name'=> $item->department->en_name,
                'link'=> $item->department->link,
                ];
            }else{
              $data['department']=[];
            }
                return $data;
        });
       $this->NewsRepository->update($id, ['views' => $news->views += 1]);
       return Utilities::wrap($dataItem[0], 200);
        }
        elseif($lang == 'ar'){
            $dataItem =  $response->map(function($item){
            $data['id'] = $item->id;
            $data['title'] = $item->ar_title;
            $data['description'] = $item->ar_description;
            $data['sub_description'] = $item->ar_sub_description;
            $data['image'] = $item->image;
            $data['views'] = $item->views;
            $data['user_id'] = $item->user_id;
            $data['department_id'] = $item->department_id;
            $data['created_at'] = $item->created_at;
            $data['updated_at'] = $item->updated_at;
            $data['comment'] = $item->comment;
            $data['is_slider'] = $item->is_slider;
            $data['tags'] = $item->tags;
            $data['images'] = $item->images;
            if(!is_null($item->user)){
            $data['user'] = [
                'id' => $item->user->id,
                'full_name'=> $item->user->full_name,
                'email'=> $item->user->email,
                'phone'=> $item->user->phone,
                'image'=> $item->user->image,
                ];
            }else{
                $data['user']=[];
            }
            if(!empty($item->department)){
              $data['department'] = [
                'id' => $item->department->id,
                'name'=> $item->department->ar_name,
                'link'=> $item->department->link,
                ];
            }else{
              $data['department']=[];
            }
            return $data;
        });
       $this->NewsRepository->update($id, ['views' => $news->views += 1]);
       return Utilities::wrap($dataItem[0], 200);
    }
       $this->NewsRepository->update($id, ['views' => $news->views += 1]);

       //Response
       return Utilities::wrap($response[0], 200);
    }

    //add news
    public function store(Request $request)
    {
        //validations 
        $news = $request->validate([
            'ar_title' => 'required|string',
            'ar_sub_description' => 'string',
            'ar_description' => 'string',
            'en_title' => 'required|string',
            'en_sub_description' => 'string',
            'en_description' => 'string',
            'department_id' => 'integer|exists:since_departments,id',
            'image' => 'required|file|mimes:jpeg,bmp,png,jpg',
        ]);
        $tags = $request->validate([
            "tags"    => "nullable|array",
        ]);
        $images = $request->validate([
          "images"    => "nullable|array",
        ]);
        $extension =['png','jepg','jpg'];
        //Processing
        $news['user_id'] = auth()->user()->id;
        if($request->hasFile('image')){//check file
            $request->validate([
                'image' => 'file|mimes:jpeg,bmp,png,jpg'
            ]);
            $fileName = $request->file('image');
            $new_name = $fileName->store('news');
            $news['image'] = $new_name;
        }
        $response = $this->NewsRepository->create($news);
        if (!empty($tags['tags'][0])) {
            foreach ($tags['tags'] as $data) {
                $tag['name'] = $data;
                $check = Tag::where('name', $tag['name'])->first();
                if ($check) {
                    $tagNews['tag_id'] = $check['id'];
                    $tagNews['news_id'] = $response->id;
                } else {
                    $newsTag =  $this->TagsRepository->create($tag);
                    $tagNews['tag_id'] = $newsTag->id;
                    $tagNews['news_id'] = $response->id;
                }
                TagsNews::create($tagNews);
            }
        }
        if (!empty($images['images'][0])) {
          foreach($request->file('images') as $key=>$file)// check extention before create in database
            {
                $name=$file->getClientOriginalName();
                $ext = pathinfo($name, PATHINFO_EXTENSION); 
                if(!in_array($ext, $extension)){
                    return Utilities::wrap(['error' => 'Invalid Extension'], 400);
                }
            }

           foreach($request->file('images') as $key=>$file)
            {
                $name=$file->getClientOriginalName();
                $ext = pathinfo($name, PATHINFO_EXTENSION); 
                $fileName = pathinfo($name,PATHINFO_FILENAME);
                $path = $file->store('news');
                $image = new Image();
                $image->link = $path; 
                $image->news_id= $response['id']; 
                $image->save();
            }
      }
        //Response
        return Utilities::wrap($response, 200);
    }
     
    //update news
    public function update(Request $request, $id)
    {
        //validations 
        $news = $request->validate([
            'ar_title' => 'string',
            'ar_sub_description' => 'string',
            'ar_description' => 'string',
            'en_title' => 'string',
            'en_sub_description' => 'string',
            'en_description' => 'string',
            'is_slider' => 'integer|in:0,1',
            'department_id' => 'integer|exists:since_departments,id',
            'image' => 'file|mimes:jpeg,bmp,png,jpg',
        ]);
        
        //Processing
        $news['user_id'] = auth()->user()->id;
        if($request->hasFile('image')){//check file
            $request->validate([
                'image' => 'file|mimes:jpeg,bmp,png,jpg'
            ]);
            $fileName = $request->file('image');
            $new_name = $fileName->store('newsPoster');
            $news['image'] = $new_name;
        }
        $response = $this->NewsRepository->update($id, $news);

        //Response
        return Utilities::wrap($response, 200);
    }
        
    //delete news
    public function destroy($id)
    {
        $News = News::where('id', $id)->where('is_deleted', 0)->firstOrFail();
       
        //Processing
        $response = $this->NewsRepository->delete($News);

        //Response
        return Utilities::wrap($response, 200);
        
    }    

    //delete news
    public function addSlider($id)
    {
        $News = News::where('id', $id)->where('is_deleted', 0)->firstOrFail();
       
        //Processing
        if($News->is_slider == 0){
            $response = $this->NewsRepository->update($id, ['is_slider'=> 1]);
        }else{
            $response = $this->NewsRepository->update($id, ['is_slider'=> 0]);
        }

        //Response
        return Utilities::wrap($response, 200);
        
    } 

         
}
