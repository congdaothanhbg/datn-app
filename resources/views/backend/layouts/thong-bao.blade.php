@if(session('success'))
    <div class="alert alert-success fade show">
        <button class="close" data-dismiss="alert" aria-label="Đóng">×</button>
        {{session('success')}}
    </div>
@endif

@if(session('error'))
    <div class="alert alert-danger fade show">
        <button class="close" data-dismiss="alert" aria-label="Đóng">×</button>
        {{session('error')}}
    </div>
@endif
