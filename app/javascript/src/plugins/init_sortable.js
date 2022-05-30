// src/plugins/init_sortable.js
import Sortable from "sortablejs"

const list = document.querySelector("#results")

const initSortable = () => {
  Sortable.create(list)
}

export { initSortable }
