$( document ).ready(function() {

  $( "#followups-needed-btn" ).click(function() {
    $( "#followups-needed-panel" ).slideToggle( function() {
      $( "#recent-interactions-panel" ).hide();
    });
  });

  $( "#recent-interactions-btn" ).click(function() {
    $( "#recent-interactions-panel" ).slideToggle( function() {
      $( "#followups-needed-panel" ).hide();
    });
  });

});

$(document.getElementById("#map")).ready(function() {
  mapboxgl.accessToken = 'pk.eyJ1IjoibmJiMTI4MDUiLCJhIjoiMUlFVjZWVSJ9.jeNyiaRq8MCHlXSlGQZIHA';
  var map = new mapboxgl.Map({
      container: 'map', // container id
      style: 'mapbox://styles/mapbox/streets-v8', //stylesheet location
      center: [-74.50, 40], // starting position
      zoom: 9 // starting zoom
  });
});
