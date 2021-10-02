@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ route('companies.index') }}">{{ __('Companies') }}</a></li>
                            <li class="breadcrumb-item active" aria-current="page">{{ $companies->name }}</li>
                        </ol>
                    </nav>
                </div>
                <div class="card-body text-center">

                    <p><img src="{{ asset('storage/'.$companies->logo) }}" class="img-fluid rounded-lg" width="100" alt="{{ $companies->name }}"></p>
                    <p>{{ $companies->name }}</p>
                    <p>{{ $companies->email }}</p>
                    <p>{{ $companies->website }}</p>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
