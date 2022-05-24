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
