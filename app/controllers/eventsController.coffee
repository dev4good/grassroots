class App.EventsController extends App.ApplicationController
###
  index: ->
    App.Event.where(@criteria()).all (error, collection) =>
      @render "index"

  new: ->
    resource = new App.Event
    @render "new"

  create: ->
    App.Event.create @params.event, (error, resource) =>
      if error
        @redirectTo "new"
      else
        @redirectTo @urlFor(resource)

  show:  ->
    App.Event.find @params.id, (error, resource) =>
      if resource
        @render "show"
      else
        @redirectTo "index"

  edit: ->
    App.Event.find @params.id, (error, resource) =>
      if resource
        @render "edit"
      else
        @redirectTo "index"

  update: ->
    App.Event.find @params.id (error, resource) =>
      if error
        @redirectTo "edit"
      else
        resource.updateAttributes @params.event, (error) =>
          @redirectTo @urlFor(resource)

  destroy: ->
    App.Event.find @params.id, (error, resource) =>
      if error
        @redirectTo "index"
      else
        resource.destroy (error) =>
          @redirectTo "index"
###
