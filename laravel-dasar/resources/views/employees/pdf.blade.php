<!DOCTYPE html>
<html>
<head>
	<title>Data Pegawai {{ $company->name }}</title>
	<!-- Styles -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<style type="text/css">
		table tr td,
		table tr th{
			font-size: 9pt;
		}
	</style>
	<center>
		<h5>Data Pegawai {{ $company->name }}</h4>
		<h6>{{ $company->email }}</h5>
	</center>

	<table class='table table-bordered'>
		<thead>
			<tr>
				<th>No</th>
				<th>Nama</th>
				<th>Email</th>
			</tr>
		</thead>
		<tbody>
			@foreach($employees as $item)
			<tr>
				<td>{{ $loop->iteration }}</td>
				<td>{{$item->name}}</td>
				<td>{{$item->email}}</td>
			</tr>
			@endforeach
		</tbody>
	</table>

</body>
</html>
