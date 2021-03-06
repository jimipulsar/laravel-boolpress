<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\Posts;
use \App\Category;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $posts = Posts::all();
      return view('posts.index', compact('posts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('posts.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      $newUser = new Posts();
      $data = $request->all();
      $newUser->title = $data['title'];
      $newUser->author = $data['author'];
      $newUser->content = $data['content'];
      $newUser->category_id = $data['category_id'];
      $newUser->save();
      return redirect()->route('posts.index')->with('message', 'Articolo creato con successo');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      $posts = Posts::find($id);
      return view('posts.show', compact('posts'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
      $posts = Posts::find($id);
      return view ('posts.edit', compact('posts'));
  $post->save()->with('message', 'Articolo modificato con successo');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
      $user = Posts::find($id);
      $data = $request->all();
      $user->update($data);
      return redirect()->route('posts.index');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
      $user = Posts::find($id);
      $user->delete();
      return redirect()->route('posts.index');
    }
}
