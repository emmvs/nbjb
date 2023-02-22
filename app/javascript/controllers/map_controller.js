import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"
export default class extends Controller {
  connect() { 
    mapboxgl.accessToken = 'NBJB_MAPBOX_API_KEY';
    var map = new mapboxgl.Map({
    container: 'map',                                // Container ID
    style: 'mapbox://styles/mapbox/streets-v11',     // URL Style
    center: [-75.5, 40],                             // Starting position
    zoom: 9                                          // Starting zoom
  });
  }
}
