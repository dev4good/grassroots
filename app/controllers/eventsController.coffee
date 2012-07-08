class App.EventsController extends App.ApplicationController
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
        @redirectTo redirect("/me")
  respond: ->
    @redirectTo redirect("/")
