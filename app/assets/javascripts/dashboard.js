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
        center: [-98.583333, 39.833333],
        zoom: 3
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
               var street = data.companies[0].address_1;
               var city = data.companies[0].city;
               var state = data.companies[0].state;
               var zip_code = data.companies[0].zip_code;
               var full_address = street+" "+city+" "+state+" "+zip_code;
               var encoded_address = encodeURI(full_address);

               console.log(full_address);
               console.log(encoded_address);

               // Convert to a lat/long coordinate
               // Not hitting API correctly here
               $.get( "https://api.mapbox.com/geocoding/v5/mapbox.places/"+encoded_address+".json?&access_token=pk.eyJ1IjoibmJiMTI4MDUiLCJhIjoiMUlFVjZWVSJ9.jeNyiaRq8MCHlXSlGQZIHA", function( data ) {
                  console.log(data);
                });

               // Add point to map as a geojson
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
                                 "title": "You Are Here!",
                                 "marker-symbol": "marker"
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
             }
           });
         });


/////////////////////   MAP JS   /////////////////////
