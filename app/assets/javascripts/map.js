$(document).ready(function () {

var show_cuisine = function() {

    var   $cuisine = $(this).attr('id');
    // var $checked = $cuisine.find(':checked');
    var show = $(this).is(':checked');

    $.each(markers, function (i, marker) {
      // debugger;
      if (marker.cuisine == $cuisine)
        marker.setVisible(show);
    }
)}

$('.show_cuisine').on('change', show_cuisine);

});

