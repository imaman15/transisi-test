@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ route('employees.index') }}">{{ __('Employees') }}</a></li>
                            <li class="breadcrumb-item active" aria-current="page">{{ __('Add') }}</li>
                        </ol>
                    </nav>
                </div>
                <div class="card-body">

                    <form method="POST" action="{{ route('employees.update', $employees->id) }}">
                        @csrf
                        @method("PUT")
                        <div class="form-group">
                            <label for="name"> Nama Pegawai</label>
                            <input name="name" type="text" class="form-control @error('name') is-invalid @enderror" value="{{ old('name', $employees->name) }}" required autofocus>
                            @error('name')
                                <div class="text-danger mt-1">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="company"> Nama Perusahaan</label>
                            <select name="company" id="company" class="form-control" required>
                                @if ($employees->id)
                                    <option value="{{ $employees->company_id }}">{{ $employees->companies->name }}</option selected>
                                @else
                                    <option></option>
                                @endif
                            </select>
                            @error('company')
                                <div class="text-danger mt-1">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="email"> Email Pegawai</label>
                            <input name="email" type="email" class="form-control @error('email') is-invalid @enderror" value="{{ old('email', $employees->email) }}" required>
                            @error('email')
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
