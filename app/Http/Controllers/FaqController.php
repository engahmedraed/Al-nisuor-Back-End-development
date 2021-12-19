<?php

namespace App\Http\Controllers;

use App\Models\Faq;
use App\Models\User;
use App\Helpers\Utilities;
use Illuminate\Http\Request;
use App\Repository\FaqRepository;
use App\Repository\UserRepository;
use Maatwebsite\Excel\Facades\Excel;

class FaqController extends Controller
{

    private $FaqRepository;
    private $UserRepository;
    public function __construct()
    {
        $this->UserRepository = new UserRepository(new User());
        $this->FaqRepository = new FaqRepository(new Faq());
        $this->middleware('Rules:admin', ['only' => ['store', 'update', 'destroy']]);

    }

    //all Faqs data
    public function index(Request $request)
    {
       //validations
       $request->validate([
           'skip' => 'Integer',
           'take' => 'required|Integer'
       ]);

       //parameters
       $relations = '';
       $filter = ['ar_question','ar_answer','en_question','en_answer'];
       $take = $request->take;
       $skip = ($request->skip == null)? 0:$request->skip * $take;
       $lang = $request->header('Accept-Language');
    //    if(!in_array($lang, ['en', 'ar']) && $lang != null){
    //       $lang = 'ar';
    //    }
       
      //Processing
      $response = $this->FaqRepository->getLisData($skip, $take, $relations, $filter);
        if($lang == 'en'){
            $dataItem =  $response['items']->map(function($item){
                $data['id'] = $item->id;
                $data['question'] = $item->en_question;
                $data['answer'] = $item->en_answer;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                
                return $data;
          });
          return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }elseif($lang == 'ar'){
            $dataItem =  $response['items']->map(function($item){
                $data['id'] = $item->id;
                $data['question'] = $item->ar_question;
                $data['answer'] = $item->ar_answer;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                  
                  return $data;
            });
            return Utilities::wrap(['totalCount' => $response['totalCount'], 'items' => $dataItem ], 200);
        }
       //Response
       return Utilities::wrap($response, 200);
    }
     
    //get Faq by Id
    public function show(Request $request, $id)
    {
       $lang = $request->header('Accept-Language'); 
    //    if(!in_array($lang, ['en', 'ar']) && $lang != null){
    //     $lang = 'ar';
    //    }

       //Processing
       Faq::where('id', $id)->where('is_deleted', 0)->firstOrFail();
       $response = $this->FaqRepository->getModelByIdFaq($id);
       if($lang == 'en'){
        $dataItem =  $response->map(function($item){
            $data['id'] = $item->id;
            $data['question'] = $item->en_question;
            $data['answer'] = $item->en_answer;
            $data['created_at'] = $item->created_at;
            $data['updated_at'] = $item->updated_at;
            
            return $data;
      });
      return Utilities::wrap($dataItem[0], 200);
        }elseif($lang == 'ar'){
            $dataItem =  $response->map(function($item){
                $data['id'] = $item->id;
                $data['question'] = $item->ar_question;
                $data['answer'] = $item->ar_answer;
                $data['created_at'] = $item->created_at;
                $data['updated_at'] = $item->updated_at;
                
                return $data;
            });
            return Utilities::wrap($dataItem[0], 200);
        }
       //Response
       return Utilities::wrap($response[0], 200);
    }

    //add Faq
    public function store(Request $request)
    {
        //validations 
        $Faq = $request->validate([
            'ar_question' => 'string',
            'ar_answer' => 'string',
            'en_question' => 'string',
            'en_answer' => 'string',
        ]);

        $response = $this->FaqRepository->create($Faq);

        //Response
        return Utilities::wrap($response, 200);
    }
     
     //update Faq
     public function update(Request $request, $id)
     {
        //validations 
        $Faq = $request->validate([
            'ar_question' => 'string',
            'ar_answer' => 'string',
            'en_question' => 'string',
            'en_answer' => 'string',
        ]);

        $response = $this->FaqRepository->update($id, $Faq);
        
        //Response
        return Utilities::wrap($response, 200);
     }

    //delete Faq
    public function destroy($id)
    {
        //Find Faq
        $FaqModel = Faq::where('id', $id)->where('is_deleted', 0)->firstOrFail();

        //Processing
        $response = $this->FaqRepository->delete($FaqModel);

        //Response
        return Utilities::wrap($response, 200);
    } 
         
}
