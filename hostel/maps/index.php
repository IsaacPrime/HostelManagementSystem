<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="index.css">
</head>
<body>
    <div class="jumbotron">
        <div class="container-fluid">
            <h1>Find the Distance Between Two Places</h1>
            <p>This App Will Help You Calculate Your Travelling Distance</p>
            <form class="form-horizontal">
                <div class="form-group">
                    <label for="from" class="col-xs-2 control label"><i class="uil uil-compact-disc"></i></label>
                    <div class="col-xs-4">
                        <input type="text" id="from" placeholder="Origin" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="to" class="col-xs-2 control label"><i class="uil uil-map-marker"></i></label>
                    <div class="col-xs-4">
                        <input type="text" id="to" placeholder="Destination" class="form-control">
                    </div>
                </div>
            </form>
            <div class="col-xs-offset-2 col-xs-10">
                <button class="btn btn-info btn-lg"><i class="uil uil-directions"></i></button>
            </div>
        </div>
        <div class="container-fluid">
            <div id="googlemap">

            </div>
            <div id="output">

            </div>
        </div>
    </div>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBeQKx5SO7gdP9LYivwQzvzV7RivFtZ8pI&libraries=places"></script>
    <script src="app.js"></script>
</body>
</html>