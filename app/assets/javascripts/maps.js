var map;

$(document).ready(function() {
  var options = {
    center: new google.maps.LatLng(51.5, -0.125),
    zoom: 8
  };

  map =  new google.maps.Map($('#map-canvas')[0], options);

function addMarker(lat, lng) {
  var marker = new google.maps.Marker({
    position: new google.maps.LatLng(lat, lng),
    map: map
  });
}


// Initiate a JSON request
addMarker(51.516614, -0.079358);
addMarker(55.957175, -3.187894);
addMarker(51.521371, -0.210583);
addMarker(51.490694, -0.153452);
addMarker(51.528913, -0.077664);

});


