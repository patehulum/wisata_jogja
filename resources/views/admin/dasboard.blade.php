@extends('admin.index')

@section('content')
<div class="col-md-9" style="background-color: #5555; border-radius: 10px; padding-top: 30px; min-height: 800px">
	<div class="scrollable1">
  		<h3 style="text-align: center; color:#ffff; "> Selamat Datang, 

            @foreach($user as $user)
            	{{$user->name}}
            @endforeach

  		</h3>

        <p style="text-align: justify; color: #ffff;">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>

  	</div>
</div>

@endsection