import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bottom-navbar"
export default class extends Controller {
  connect() {
    console.log("Shalom ☀️");
  }
}
