class App.ResourcesController extends App.ApplicationController
###
  index: ->
    App.Resource.where(@criteria()).all (error, collection) =>
      @render "index"

  new: ->
    resource = new App.Resource
    @render "new"

  create: ->
    App.Resource.create @params.resource, (error, resource) =>
      if error
        @redirectTo "new"
      else
        @redirectTo @urlFor(resource)

  show:  ->
    App.Resource.find @params.id, (error, resource) =>
      if resource
        @render "show"
      else
        @redirectTo "index"

  edit: ->
    App.Resource.find @params.id, (error, resource) =>
      if resource
        @render "edit"
      else
        @redirectTo "index"

  update: ->
    App.Resource.find @params.id (error, resource) =>
      if error
        @redirectTo "edit"
      else
        resource.updateAttributes @params.resource, (error) =>
          @redirectTo @urlFor(resource)

  destroy: ->
    App.Resource.find @params.id, (error, resource) =>
      if error
        @redirectTo "index"
      else
        resource.destroy (error) =>
          @redirectTo "index"
###
