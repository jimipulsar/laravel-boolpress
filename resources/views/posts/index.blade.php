@extends ('layouts.app')

@section ('content')
<div class="form-contatto">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h2>Tutti i post</h2> <h2 class="secondo-titolo"><a href="{{ route ('posts.create')}}" class="btn btn-primary" id="btn-create">Aggiungi nuovo articolo</a></h2>
				<table class="table">
					@if ($message = Session::get('message'))
					<div class="alert alert-success">
					{{$message}}
					</div>
					@endif
					<thead>
					<tr>
						<th>ID</th>
						<th>Titolo</th>
						<th>Autore</th>
						<th>Categoria</th>
						<th>Descrizione</th>
						<th>Creato il</th>
						<th></th>
						<th>Operazioni</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					@foreach ($posts as $post)
					<tr>
						<td>{{$post->id}}</td>
						<td>{{$post->title}}</td>
						<td>{{$post->author}}</td>
						<td>{{ $post->category_id}}</td>
						<td>{{ substr($post->content, 0, 200)}}{{ strlen($post->content) > 200 ? '...' : ""}}</td>
						<td>{{ $post->created_at}}</td>
						<td><a href="{{route('posts.show', $post->id)}}" class="btn btn-primary">Mostra</a></td>
						<td>
							<a href="{{route('posts.edit', $post->id)}}" class="btn btn-success">Modifica</a>
						</td>
						<td>
						<form action="{{ route('posts.destroy', $post->id)}}" method="post">
						@csrf
						@method('DELETE')
						<input class="btn btn-danger" type="submit" value="Elimina">
						</form>
					</td>
					</tr>
					@endforeach
				</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
@endsection
