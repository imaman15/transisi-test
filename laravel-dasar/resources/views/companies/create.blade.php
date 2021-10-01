@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Add Companies') }}</div>
                <div class="card-body">

                    <form method="POST" enctype="multipart/form-data" action="{{ route('companies.store') }}">
                        @csrf
                        <div class="form-group">
                            <label for="name"> Nama Perusahaan</label>
                            <input name="name" type="text" class="form-control @error('name') is-invalid @enderror" value="{{ old('name') }}" required autofocus>
                            @error('name')
                                <div class="text-danger mt-1">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="email"> Email Perusahaan</label>
                            <input name="email" type="email" class="form-control @error('email') is-invalid @enderror" value="{{ old('email') }}" required>
                            @error('email')
                                <div class="text-danger mt-1">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="logo"> Logo Perusahaan</label>
                            <input name="logo" type="file" class="form-control @error('logo') is-invalid @enderror" value="{{ old('logo') }}" required>
                            @error('logo')
                                <div class="text-danger mt-1">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="website"> Website Perusahaan</label>
                            <input name="website" type="url" class="form-control @error('website') is-invalid @enderror" value="{{ old('website') }}" required>
                            @error('website')
                                <div class="text-danger mt-1">{{ $message }}</div>
                            @enderror
                        </div>

                        <button type="submit" class="btn btn-primary my-2">Save</button>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
