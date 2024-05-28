@extends('backend.layouts.master')
@section('title', 'E-SHOP || All Notifications')
@section('main-content')
    <div class="card">
        <div class="row">
            <div class="col-md-12">
                @include('backend.layouts.thong-bao')
            </div>
        </div>
        <h5 class="card-header">Notifications</h5>
        <div class="card-body">
            @if (count(Auth::user()->Notifications) > 0)
                <div class="table-responsive">
                    <table class="table  table-hover admin-table" id="dataTable">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Time</th>
                                <th scope="col">Title</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach (Auth::user()->Notifications as $notification)
                                <tr
                                    class="@if ($notification->unread()) bg-light border-left-light @else border-left-success @endif">
                                    <td scope="row">{{ $loop->index + 1 }}</td>
                                    <td>{{ $notification->created_at->format('F d, Y h:i A') }}</td>
                                    <td>{{ $notification->data['title'] }}</td>
                                    <td>
                                        <a href="{{ route('admin.notification', $notification->id) }}"
                                            class="btn btn-primary btn-sm float-left mr-1"
                                            style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip"
                                            title="view" data-placement="bottom"><i class="fas fa-eye"></i></a>
                                        <form method="POST" action="{{ route('notification.delete', $notification->id) }}">
                                            @csrf
                                            @method('delete')
                                            <button class="btn btn-danger btn-sm dltBtn" data-id={{ $notification->id }}
                                                style="height:30px; width:30px;border-radius:50%" data-toggle="tooltip"
                                                data-placement="bottom" title="Delete"><i
                                                    class="fas fa-trash-alt"></i></button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            @else
                <h2>Không có thông báo nào!</h2>
            @endif
        </div>
    </div>
@endsection
@push('styles')
    @include('backend.layouts.index-push-styles')
@endpush
@push('scripts')
    @include('backend.layouts.index-push-scripts')
@endpush
