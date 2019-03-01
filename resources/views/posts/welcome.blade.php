@extends ('layouts.app')
@section('content')
  <div class="home">
	  <!-- Page Content -->
    <div class="container">

      <!-- Jumbotron Header -->
      <header class="jumbotron my-4" id="header-background">
        <h2>Tutti i post</h2>
        <p class="lead">Clicca sul pulsante qui sotto per visualizzare tutti gli articoli ed effettuare modifiche</p>
        <a href="{{route('posts.index')}}" class="btn btn-primary btn-lg">Tutti gli articoli</a>
      </header>

      <!-- Page Features -->
      <div class="row text-center">

  			@foreach ($posts as $post)
        <div class="col-lg-3 col-md-6 mb-4">
          <div class="card card1">
            <!-- <img class="card-img-top" src="{{asset('img/'.$post->image)}}" alt=""> -->
            <div class="card-body">

              <h4 class="card-title" value="">{{$post->title}}</h4>
              <p class="card-text">{{ substr($post->content, 0, 200)}}{{ strlen($post->content) > 200 ? '...' : ""}}</td>
                <p class="card-text"><strong>Categoria:</strong> {{$post->category_id}}</td>
                  <p class="card-text"><strong>Pubblicato il:</strong> {{$post->created_at}}</td>
            </div>
            <div class="card-footer">
            <a href="{{route('posts.show', $post->id)}}" class="btn btn-primary">Mostra</a>
            </div>
          </div>
        </div>

  			@endforeach

      </div>
    </div>
    <!-- /.container -->

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</div>
@endsection
