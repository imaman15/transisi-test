@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Detail Companies') }}</div>
                <div class="card-body">

                    <p>{{ $companies->logo }}</p>
                    <p>{{ $companies->name }}</p>
                    <p>{{ $companies->email }}</p>
                    <p>{{ $companies->website }}</p>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
