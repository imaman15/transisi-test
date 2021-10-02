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
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                            Import Data Excel
                        </button>
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
                    <div class="table-responsive">
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th class="text-center">Logo Perusahaan</th>
                                    <th>Nama Perusahaan</th>
                                    <th>Website</th>
                                    <th class="text-center">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($companies as $key => $item)
                                    <tr>
                                        <td scope="row" class="align-middle text-center">{{ $companies->firstItem() + $key }}</td>
                                        <td class="align-middle text-center">
                                            <img src="{{ asset('storage/'. $item->logo) }}" class="img-fluid rounded-lg" width="70" alt="{{ $item->name }}">
                                        </td>
                                        <td class="align-middle">
                                            <a href="{{ route('companies.show', $item->id) }}">{{ $item->name }}</a>
                                            <p class="text-sm">{{ $item->email }}</p>
                                        </td>
                                        <td class="align-middle">{{ $item->website }}</td>
                                        <td class="align-middle">
                                            <div>
                                                <div class="d-flex flex-column flex-md-row justify-content-center align-items-center">
                                                    <a class="btn btn-primary btn-sm mr-md-1" href="{{ route('companies.edit', $item->id) }}" role="button">Edit</a>
                                                    <a class="btn btn-primary btn-sm mr-md-1" href="{{ route('employees.pdf', $item->id) }}" role="button">Export Employees <span class="badge badge-light">{{ count($item->employees) }}</span></a>
                                                    <form class="my-auto" action="{{ route('companies.destroy', $item->id) }}" method="post">
                                                        @csrf
                                                        @method('DELETE')
                                                        <button class="btn btn-danger btn-sm h-100" type="submit">Delete</button>
                                                    </form>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                @empty
                                    <td colspan="5" class="text-center">Tidak ada data...</td>
                                @endforelse
                            </tbody>
                        </table>
                    </div>
                    <div class="d-flex justify-content-center align-items-center">
                        <div class="d-flex">{{ $companies->links() }}</div>
                        <div class="ml-2 mb-3">Showing {{ $companies->firstItem() }} to {{ $companies->lastItem() }} of {{ $companies->total() }} results</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
    <form method="post" action="{{route('companies.import')}}" enctype="multipart/form-data">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Import Data Excel</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            @csrf
            <div class="form-group">
                <label for="file">Pilih file excel</label>
                <input name="file" type="file" class="form-control-file" required>
                @error('file')
                    <div class="text-danger mt-1">{{ $message }}</div>
                @enderror
            </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Import</button>
        </div>
    </form>
      </div>
    </div>
  </div>
@endsection
