var map;
var shops;

$(document).ready(function() {
  var options = {
    center: new google.maps.LatLng(51.5, -0.125),
    zoom: 8
  };

  map =  new google.maps.Map($('#map-canvas')[0], options);

  shops = document.getElementsByClassName("shops");

  for(var i=0; i<shops.length; i++){

    var latitude = $(shops[i]).data("latitude");
    var longitude = $(shops[i]).data("longitude");
    addMarker(latitude, longitude);
   
  }

});

  function addMarker(lat, lng) {
    var marker = new google.maps.Marker({
      position: new google.maps.LatLng(lat, lng),
      map: map
    });

    google.maps.event.addListener(marker, 'click', function() {
      map.setZoom(16);
      map.setCenter(marker.getPosition());
    });

  }

    

