<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Helpers\Utilities;
use Illuminate\Http\Request;
use App\Repository\CommentRepository;

class CommentController extends Controller
{

    private $CommentRepository;
    public function __construct()
    {
        $this->CommentRepository = new CommentRepository(new Comment());
        $this->middleware('Rules:admin', ['only' => ['index', 'show', 'store', 'update', 'destroy']]);
    }

    //all comment data
    public function index(Request $request)
    {
       //validations
       $request->validate([
           'skip' => 'Integer',
           'take' => 'required|Integer'
       ]);

        //parameters
        $relations = ['news','user'];
        $filter = ['name'];
        $take = $request->take;
        $skip = ($request->skip == null)? 0:$request->skip * $take;
        
        //Processing
        $response = $this->CommentRepository->getLisData($skip, $take, $relations, $filter);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //get comment by Id
    public function show($id)
    {
        $relations = ['news', 'replaies','user'];

       //Processing
       $response = $this->CommentRepository->getById($id, $relations);

       //Response
       return Utilities::wrap($response, 200);
    }

    //add comment
    public function store(Request $request)
    {
        //validations 
        $comment = $request->validate([
            'comment' => 'required|string',
            'news_id' => 'required|integer|exists:news,id',
            'comment_id' => 'integer|exists:comments,id'
        ]);
        //Processing
        $comment['user_id'] = auth()->user()->id;
        $response = $this->CommentRepository->create($comment);

        //Response
        return Utilities::wrap($response, 200);
    }
     
    //update comment
    public function update(Request $request, $id)
    {
        //validations 
        $comment = $request->validate([
            'comment' => 'string',
            'news_id' => 'integer|exists:news,id',
            'comment_id' => 'integer|exists:comment,id'
        ]);

        //Processing
        $comment['user_id'] = auth()->user()->id;
        $response = $this->CommentRepository->update($id, $comment);

        //Response
        return Utilities::wrap($response, 200);
    }
        
    //delete comment
    public function destroy($id)
    {
        $Comment = Comment::where('id', $id)->where('is_deleted', 0)->firstOrFail();
       
        //Processing
        $response = $this->CommentRepository->delete($Comment);

        //Response
        return Utilities::wrap($response, 200);
        
    } 

         
}
