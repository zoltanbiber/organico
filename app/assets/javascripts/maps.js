var map;

$(document).ready(function() {
  var options = {
    center: new google.maps.LatLng(51.5, -0.125),
    zoom: 8
  };

  map =  new google.maps.Map($('#map-canvas')[0], options);

});

function addMarker(lat, lng) {
  var marker = new google.maps.Marker({
    position: new google.maps.LatLng(lat, lng),
    map: map
  });
}