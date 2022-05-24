<?php
error_reporting(0);
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();


?>
<!doctype html>
<html lang="en" class="no-js">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	<title>directions</title>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">>
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/index.css">
<script type="text/javascript" src="js/jquery-1.11.3-jquery.min.js"></script>
<script type="text/javascript" src="js/validation.min.js"></script>

<style>
	#map{
		width: 800px;
		height:  450px;
	}
</style>

</head>
<body>
	<?php include('includes/header.php');?>
	<div class="ts-main-content">
		<?php include('includes/sidebar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-12">
					
						<h2 class="page-title">Edit Hostel Directions </h2>
	
						<div class="row">
							<div class="col-md-12">
								<div class="panel panel-default">
									<div class="panel-heading">Maps</div>
									<div class="panel-body">
										
    <div class="jumbotron">
        <div class="container-fluid">
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
    <script>
		// Set Map Options

var mylatlng = {lat : 0.134642866539, lng : 37.7097441961};
var mapOptions = {
    center: mylatlng,
    zoom: 7,
    mapTypeId : google.maps.MapTypeId.ROADMAP
};
//Create Map

var map = new google.maps.Map(document.getElementById("googlemap"), mapOptions)
//Create a Directions Service object To Use The Route method and get a result for our request
var directionsService = new google.maps.DirectionsService();
// Create a Direction Renderer which we will use to display the route
var directionsDisplay = new google.maps.DirectionsRenderer();

//Bind the Directionrenderer to the map

directionsDisplay.setMap(map);
function calcRoute() {
    //create Request
    var request = {
        origin : document.getElementById("from").value,
        destination : document.getElementById("to").value,
        travelMode : google.maps.TravelMode.DRIVING, //walking ,BYCYCLING AND TRANSIT
        unitSystem : google.maps.UnitSystem.IMPERIAL
    }
    //pass the request to the route method
    directionsService.route(request, (result, status) => {
        if (status == google.maps.DirectionsStatus.OK) {
            //get Distance and Time
            const output = document.querySelector('#output');
            output.innerHTML = "<div class='alert-info'> From: " + document.getElementById("from").value + " .<br />To: " + document.getElementById("to").value + ". <br /> Driving distance <i class='uil uil-flip-h-alt'></i>:" + result.routes[0].legs[0].distance.text + ".<br />Duration <i class='uil uil-clock-seven'></i> : " + result.routes[0].legs[0].duration.text + ". </div>";
            // display route
            directionsDisplay.setDirections(result);
        } else{
            // delete Route From Map
            directionsDisplay.setDirections({ routes: []});

            //Center Map
            map.setCenter(mylatlng);

            //Show Error Message
            output.innerHTML = "<div class='alert-danger'><i class='uil uil-exclamation-octagon'></i> Could Retrieve Driving Distance. </div>";
        }
    });
}

// create autocomplete objects for all input

var options = {
    types: ['(cities)']
}
var input1 = document.getElementById("from");
var autocomplete1 = new google.maps.places.Autocomplete(input1, options)

var input2 = document.getElementById("to");
var autocomplete2 = new google.maps.places.Autocomplete(input2, options)

	</script>
											<!--<iframe src="https://www.google.com/maps/embed?pb=!1m25!1m12!1m3!1d1994.9035918559343!2d37.71016590794339!3d0.1353748821787549!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m10!3e6!4m3!3m2!1d0.1339053!2d37.7128556!4m4!1s0x17883c9132de9afb%3A0xe7a83dba480ca350!3m2!1d0.13684169999999998!2d37.7096649!5e0!3m2!1sen!2ske!4v1649251644777!5m2!1sen!2ske" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
										</p>-->

									</div>
								</div>
							</div>
							</div>
						</div>
					</div>
				</div> 
			</div>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script>

</script>
</body>

</html>