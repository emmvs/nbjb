// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName
import { application } from "./application"

import SortableController from "./sortable_controller.js"
application.register("sortable", SortableController)

import HelloController from "./hello_controller.js"
application.register("hello", HelloController)

import MapController from "./map_controller.js"
application.register("map", MapController)

// Eager load all controllers defined in the import map under controllers/**/*_controller
// import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
// eagerLoadControllersFrom("controllers", application)

// Load all the controllers within this directory and all subdirectories.
// Controller files must be named *_controller.js.

// import { Application } from "stimulus"
// import { definitionsFromContext } from "stimulus/webpack-helpers"

// const application = Application.start()
// const context = require.context("controllers", true, /_controller\.js$/)
// application.load(definitionsFromContext(context))

// const channels = require.context('.', true, /_channel\.js$/)
// channels.keys().forEach(channels)
