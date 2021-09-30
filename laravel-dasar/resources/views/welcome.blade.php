<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Transisi Test</title>

        <link href="{{ asset('css/app.css') }}" rel="stylesheet">

    </head>
    <body>
        <div class="container text-center py-5">
            <button type="button" class="btn btn-lg btn-danger" data-toggle="popover" title="Test button" data-content="Transisi Test Bagian Laravel Dasar!">Transisi Test</button>
        </div>

        <script src="{{ asset('js/app.js') }}"></script>
        <script>
            // popover Bootstrap
            $(function (){
                $('[data-toggle="popover"]').popover()
            })
        </script>
    </body>
</html>
