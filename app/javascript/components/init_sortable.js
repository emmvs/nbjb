// app/javascript/channels/sortable_controller.js
import Sortable from "sortablejs"

const list = document.getElementById("results")

const initSortable = () => {
  console.log("hello from sortable")
  Sortable.create(list)
}

export { initSortable }
