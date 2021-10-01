@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">{{ __('Companies') }}</div>

                <div class="card-body">
                    <div class="d-flex justify-content-end align-items-center mb-3">
                        <a href="{{ route('companies.create') }}" class="btn btn-primary mr-2">Add Companies</a>
                        <a href="{{ url('companies/create') }}" class="btn btn-primary">Import Data Excel</a>
                    </div>

                    @if (session()->has('success'))
                        <div class="alert alert-success mb-3" role="alert">
                            {{session()->get('success')}}
                        </div>
                    @endif
                    @if (session()->has('error'))
                        <div class="alert alert-danger mb-3" role="alert">
                            {{session()->get('error')}}
                        </div>
                    @endif

                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Logo Perusahaan</th>
                                <th>Nama Perusahaan</th>
                                <th>Email Perusahaan</th>
                                <th>Website</th>
                                <th class="text-center">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($companies as $item)
                                <tr>
                                    <td scope="row">{{ $loop->iteration }}</td>
                                    <td>{{ $item->logo }}</td>
                                    <td>
                                        <a href="{{ route('companies.show', $item->id) }}">{{ $item->name }}</a>
                                    </td>
                                    <td>{{ $item->email }}</td>
                                    <td>{{ $item->website }}</td>
                                    <td>
                                        <div>
                                            <div class="d-flex justify-content-around">
                                                <a class="btn btn-primary btn-sm" href="{{ route('companies.edit', $item->id) }}" role="button">Edit</a>
                                                <form action="{{ route('companies.destroy', $item->id) }}" method="post">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button class="btn btn-danger btn-sm" type="submit">Delete</button>
                                                </form>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            @empty
                                <td colspan="6" class="text-center">Tidak ada data...</td>
                            @endforelse
                        </tbody>
                    </table>
                    <div class="d-flex justify-content-center">
                        {{ $companies->render() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
