/////////////////////   MAP JS   /////////////////////

$( document ).ready( function() {
    // Generate map
    //
    if ($(".map-container").length > 0 ) {


    //
    mapboxgl.accessToken = 'pk.eyJ1IjoibmJiMTI4MDUiLCJhIjoiMUlFVjZWVSJ9.jeNyiaRq8MCHlXSlGQZIHA';
    var map = new mapboxgl.Map( {
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v8',
        center: [ -98.583333, 39.833333 ],
        zoom: 3
    } );
    var currentAddress = window.companyAddresses[0];
    var addressComponents = [];
    addressComponents.push(currentAddress.address_1);
    addressComponents.push(currentAddress.city);
    addressComponents.push(currentAddress.state);
    addressComponents.push(currentAddress.zip_code);
    addressComponents.push(currentAddress.country);

    $.get( "https://api.mapbox.com/geocoding/v5/mapbox.places/" + encodeURI(addressComponents.join(" ")) + ".json?&access_token=pk.eyJ1IjoibmJiMTI4MDUiLCJhIjoiMUlFVjZWVSJ9.jeNyiaRq8MCHlXSlGQZIHA", function( data ) {
        console.log( data );

        var latLng = data.features[0].center

        map.on( 'load', function() {
            map.addSource( "markers", {
                "type": "geojson",
                "data": {
                    "type": "FeatureCollection",
                    "features": [ {
                        "type": "Feature",
                        "geometry": {
                            "type": "Point",
                            "coordinates": latLng
                        },
                        "properties": {
                            "title": "You Are Here!",
                            "marker-symbol": "marker"
                        }
                    } ]
                }
            } );

            map.addLayer( {
                "id": "markers",
                "type": "symbol",
                "source": "markers",
                "layout": {
                    "icon-image": "{marker-symbol}-15",
                    "text-field": "{title}",
                    "text-font": [ "Open Sans Semibold", "Arial Unicode MS Bold" ],
                    "text-offset": [ 0, 0.6 ],
                    "text-anchor": "top"
                }
            } );
        } );
    } );

    // Add point to map as a geojson

  }
} );


/////////////////////   MAP JS   /////////////////////
