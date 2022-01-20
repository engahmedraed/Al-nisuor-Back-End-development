<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//auth
Route::post('auth/registeration','UserController@register');
Route::post('auth/login','UserController@login');
Route::get('news/list/viewSort','NewsController@getAllSortView');
Route::get('since/deparment/clint','SinceDepartmentController@index');
Route::get('since/deparment/clint/{id}','SinceDepartmentController@show');
Route::get('about/clint','AboutController@index');
Route::get('teacher/clint','TeacherController@index');
Route::get('table/department/clint','TableDepartmentController@index');
Route::get('news/clint','NewsController@index');
Route::get('news/clint/{id}','NewsController@show');
Route::get('social/clint','SocialController@index');
Route::get('job/clint','jobsController@index');
Route::get('job/clint/{id}','jobsController@show');
Route::get('course/clint','CourseController@index');
Route::get('about/department/{id}','AboutController@showBydepartmentId');
Route::get('teacher/department/{id}','TeacherController@showBydepartmentId');
Route::get('table/by/department/{id}','TableDepartmentController@showBydepartmentId');
Route::post('presentation/job/clint','PresentationFormController@store');
Route::get('course/show/{id}', 'CourseController@show');
Route::get('teacher/show/{id}', 'TeacherController@show');
Route::get('research/show/{id}', 'ResearchController@show');
Route::get('research/clint','ResearchController@index');
Route::get('section/installment/clint','SectionInstallmentsController@index');
Route::get('section/installment/clint/{id}', 'SectionInstallmentsController@show');
Route::get('section/installment/department/{id}', 'SectionInstallmentsController@getByDepartmentId');
Route::get('faq/clint','FaqController@index');
Route::get('faq/clint/{id}', 'FaqController@show');
Route::get('tag/clint', 'TagController@index');
Route::post('job/application/form/clint','JobApplicationController@store');
Route::get('job/application/clint','JobApplicationController@index');
Route::get('international/rankings/clint','InternationalRankingsController@index');
Route::get('job/application/clint/{id}','JobApplicationController@show');
Route::get('international/rankings/clint/{id}','InternationalRankingsController@show');
Route::get('stage/clint','StagesController@index');
Route::get('stage/clint/{id}','StagesController@show');
Route::get('stage/clint/department/{id}','StagesController@showBydepartmentId');
Route::get('lecture/clint','LecturesController@index');
Route::get('lecture/clint/{id}','LecturesController@show');
Route::get('lecture/clint/stage/{id}','LecturesController@showBystageId');
Route::post('contact/clint','ContactsController@store');
Route::get('gallery/clint','GalleriesController@index');//
Route::get('students/graguated/clint','StudentsGraguatedController@index');//
Route::get('news/slider/get','NewsController@getSliderNews');
Route::get('students/researches/clint','ResearchSetudentsController@index');
Route::get('agreements/clint','Collage_agreementsController@index');
Route::get('agreements/clint/{id}','Collage_agreementsController@show');
Route::get('students/researches/clint/{id}','ResearchSetudentsController@show');
Route::get('researches/sustainablity/clint','ResearchController@showBySus');
Route::get('course/sustainablity/clint','CourseController@showBySus');
// Route::post('excel','StagesController@excel');

Route::group(['middleware' => ['auth']], function () {

    //Users
    Route::post('users','UserController@add');
    Route::get('users/getList','UserController@getList');
    Route::get('users/details','UserController@details');
    Route::put('users/{id}','UserController@update');
    Route::post('me/update/profile','UserController@updateProfile');
    Route::post('lecture/file','LecturesController@storeFiles');
    Route::delete('lecture/file/{id}','LecturesController@deleteFiles');
    Route::get('me/logout','UserController@logout');
    Route::get('/users/getById/{id}','UserController@getById');//archive fatoora with   
    Route::delete('user/{id}','UserController@delete');
    Route::post('job/type/{id}','jobsController@updateType');
    Route::get('course/status/{id}','CourseController@changeStatus');
    Route::get('news/slider/add/{id}','NewsController@addSlider');
    Route::get('job/application/admin','JobApplicationController@index');//
    
    //Since Department 
    Route::apiResource('since/deparment', 'SinceDepartmentController');
    
    //about 
    Route::apiResource('about', 'AboutController');
    
    //rule 
    Route::apiResource('rule', 'RuleController');
    
    //Teacher 
    Route::apiResource('teacher', 'TeacherController');

    //Teacher 
    Route::apiResource('section/installment', 'SectionInstallmentsController');
   
    //Research 
    Route::apiResource('research', 'ResearchController');
    
    //TableDepartment 
    Route::apiResource('table/department', 'TableDepartmentController');
    
    //Faq 
    Route::apiResource('faq', 'FaqController');
    
    //News 
    Route::apiResource('news', 'NewsController');
    
    //Social 
    Route::apiResource('social', 'SocialController');
    
    //Comment 
    Route::apiResource('comment', 'CommentController');
    
    //Tag 
    Route::apiResource('tag', 'TagController');
    
    //Jops 
    Route::apiResource('job', 'jobsController');
    
    //PresentationForm 
    Route::apiResource('presentation/job', 'PresentationFormController');
    
    //Course 
    Route::apiResource('course', 'CourseController');
    
    //JobApplication 
    Route::apiResource('job/application', 'JobApplicationController');
    
    //International Rankings  
    Route::apiResource('international/rankings', 'InternationalRankingsController');
    
    //Stages 
    Route::apiResource('stage', 'StagesController');
    
    //Lecture 
    Route::apiResource('lecture', 'LecturesController');
    
    //Contact 
    Route::apiResource('contact', 'ContactsController');
    
    //Galleries 
    Route::apiResource('gallery', 'GalleriesController');
    
    //Student Graguated 
    Route::apiResource('students/graguated', 'StudentsGraguatedController');
    
    //Research Setudents
    Route::apiResource('students/researches', 'ResearchSetudentsController');
    
    //collage agreements
    Route::apiResource('agreements', 'Collage_agreementsController');
    
});

