// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

// // Sortable
// import { initSortable } from "..src/plugins/init_sortable.js"
// initSortable()

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)
