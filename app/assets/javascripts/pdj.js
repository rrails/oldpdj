var map;
var canvas;

var display_map = function (lat, long, zoom) {

  canvas = $('#map_canvas')[0];

  if (! canvas)
    return; // I QUIT

  var mapOptions = {
    center: new google.maps.LatLng(lat, long),
    zoom: zoom,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  map = new google.maps.Map(canvas, mapOptions);
};

  var add_marker = function (lat, long, title, icon) {
  var latlng = new google.maps.LatLng(lat, long);
  var options = {
    position: latlng,
    map: map,
    title: title
  };
  if (icon) {
    options.icon = icon;
  }
  var marker = new google.maps.Marker(options);
};


$(document).ready(function () {
  display_map(-33.89336, 151.217167, 13);
});

// var markerGroups = { "thai": [], "fine dining": []};

