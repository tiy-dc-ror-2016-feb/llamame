$( document ).ready(function() {

  $("#followups-needed-btn").click(function() {
    $("#followups-needed-panel").slideToggle(function() {
      $("#recent-interactions-panel").hide();
       });
   });

  $("#recent-interactions-btn").click(function () {
    $("#recent-interactions-panel").slideToggle(function () {
      $("#followups-needed-panel").hide();
       });
  });

});

/////////////////////   MAP JS   /////////////////////

$(document.getElementById("#map")).ready(function () {
  // Generate map
    mapboxgl.accessToken = 'pk.eyJ1IjoibmJiMTI4MDUiLCJhIjoiMUlFVjZWVSJ9.jeNyiaRq8MCHlXSlGQZIHA';
    var map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v8',
        center: [-124.0674054, 46.2899054],
        zoom: 7
      }
    );

    // Get company ID from companies#show URL
    var urlArray = window.location.href.split("/");
    var companyId = urlArray.pop();

    // Return address Json of that company
    var companyJson = $.ajax({
             url: "/companies/"+companyId,
             type: "GET",
             dataType: "json",
             success: function(data){
               var address = data.companies[0];
             }
    });

    map.on('load', function () {
      map.addSource("markers", {
          "type": "geojson",
          "data": {
              "type": "FeatureCollection",
              "features": [{
                  "type": "Feature",
                  "geometry": {
                      "type": "Point",
                      "coordinates": [-77.03238901390978, 38.913188059745586]
                  },
                  "properties": {
                      "title": "Mapbox DC",
                      "marker-symbol": "monument"
                  }
              }, {
                  "type": "Feature",
                  "geometry": {
                      "type": "Point",
                      "coordinates": [-122.414, 37.776]
                  },
                  "properties": {
                      "title": "Mapbox SF",
                      "marker-symbol": "harbor"
                  }
              }]
          }
      });

      map.addLayer({
          "id": "markers",
          "type": "symbol",
          "source": "markers",
          "layout": {
              "icon-image": "{marker-symbol}-15",
              "text-field": "{title}",
              "text-font": ["Open Sans Semibold", "Arial Unicode MS Bold"],
              "text-offset": [0, 0.6],
              "text-anchor": "top"
          }
      });
  });
});



/////////////////////   MAP JS   /////////////////////
