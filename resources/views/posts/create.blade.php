@extends('layouts.app')
@section('content')

<form class="form-contatto-post" action="{{route('posts.store')}}" method="POST">
	@csrf
	<div class="form-group">
	  <label for="title">Titolo</label>
	  <input type="text" name="title" class="form-control" placeholder="Inserisci il titolo" required>
	</div>
	<div class="form-group">
		<label for="author">Autore</label>
		<input type="text" name="author" class="form-control" placeholder="Inserisci l'autore" required>
	</div>
	<div class="form-group">
		<label for="category_id">Categoria</label>
		<input type="text" name="category_id" class="form-control" placeholder="Genere" required>
	<div class="form-group">
		<label for="content">Contenuto</label>
		<textarea type="text" name="content" class="form-control" placeholder="Descrizione dell'articolo" required></textarea>
	</div>
	<div class="form-group">
		<input type="submit" value="Salva nuovo articolo" class="form-control" id="save">
	</div>
</form>
@endsection
