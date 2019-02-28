@extends ('layouts.app')

@section ('content')
<div class="form-contatto">
	<div class="container">
		<div class="col-12">
			<h2 class="secondo-titolo">{{$posts->title}} di {{$posts->author}}</h2>
			<br>
					<ul>
						<li><strong>Titolo:</strong> {{$posts->title}}</li>
						<li><strong>Autore:</strong> {{$posts->author}}</li>
						<li><strong>Categoria:</strong> {{$posts->category_id}}</li>
						<li><strong>Descrizione:</strong> {{$posts->content}}</li>
						<li><strong>Creato il:</strong> {{ $posts->created_at}}</li>
					</ul>
				<a href="{{route('users.index', $posts->id)}}" class="btn btn-primary">Torna indietro</a>
		</div>
	</div>
</div>
@endsection
