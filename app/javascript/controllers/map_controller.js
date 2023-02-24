import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"
export default class extends Controller {
  static values = { apiKey: String }
  connect() {
    console.log(this.apiKeyValue)
    mapboxgl.accessToken = this.apiKeyValue;
    var map = new mapboxgl.Map({
    container: 'map',                                // Container ID
    style: 'mapbox://styles/mapbox/streets-v11',     // URL Style
    center: [-75.5, 40],                             // Starting position
    zoom: 9                                          // Starting zoom
  });
  }
}
