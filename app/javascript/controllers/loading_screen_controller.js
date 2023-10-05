import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("HALLO from loading-screen controller");
    this.element.addEventListener("animationend", this.removeElement);
  }

  disconnect() {
    this.element.removeEventListener("animationend", this.removeElement);
  }

  removeElement = () => {
    this.element.remove();
  };
}
