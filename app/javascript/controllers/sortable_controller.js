import { Controller } from "stimulus"
import Sortable from "sortablejs"
export default class extends Controller {
  connect() {
    // this.element refers to the html element that has the data-controller
    Sortable.create(this.element)
  }
}
