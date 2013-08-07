$(document).ready(function () {

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

  $('#search_submit').click(function() {
    var search = $('#search_field').val();

    $.ajax({

        dataType: 'json',
        data: {
          'location': search
        },
        type: 'post',
        url: '/search/',
    }).done(function(data) { //function(data) is getting back the shit we got from the controller
        var lat = data.latitude
        var longi = data.longitude
      $('#map_canvas').empty();
      display_map(lat, longi, 13)
    });

});
});