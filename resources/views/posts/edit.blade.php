@extends('layouts.app')
@section('content')
<div class="form-contatto" >
	@csrf
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h2 class="terzo-titolo">Modifica il post {{$posts->title}}</h2>
				<form action="{{ route('posts.update', $posts->id)}}" method="POST">
					@method('PUT')
					@csrf
			<div class="form-edit">
				<div class="form-group">
				  <label for="title">Titolo</label>
				  <input type="text" name="title" class="form-control" placeholder="Inserisci il titolo" value="{{$posts->title}}">
				</div>
				<div class="form-group">
					<label for="author">Autore</label>
					<input type="text" name="author" class="form-control" placeholder="Inserisci l'autore" value="{{$posts->author}}">
				</div>
				<div class="form-group">
					<label for="category_id">Categoria</label>
					<input type="text" name="category_id" class="form-control" placeholder="Inserisci la categoria" value="{{$posts->category_id}}">
				</div>
				<div class="form-group">
					<label for="content">Descrizione</label>
				  <input type="text" name="content" class="form-control" placeholder="Inserisci la descrizione" value="{{$posts->content}}">
				<div class="form-group">
					<input type="submit" value="Salva nuovo articolo" class="form-control" id="save">
				</div>
			</div>
		</div>
	</div>
</div>
</form>
@endsection
