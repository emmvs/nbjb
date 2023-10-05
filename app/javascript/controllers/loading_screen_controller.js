import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.addEventListener("animationend", this.removeElement);
  }

  disconnect() {
    this.element.removeEventListener("animationend", this.removeElement);
  }

  removeElement = () => {
    this.element.remove();
  };
}
