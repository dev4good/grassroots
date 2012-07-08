class App.UsersController extends App.ApplicationController
  index: ->
    App.User.where(@criteria()).all (error, collection) =>
      @render "index"

  new: ->
    resource = new App.User
    @render "new"

  create: ->
    App.User.create @params.user, (error, resource) =>
      if error
        @redirectTo "new"
      else
        @redirectTo @urlFor(resource)

  show:  ->
    App.User.find @params.id, (error, resource) =>
      if resource
        @render "show"
      else
        @redirectTo "index"

  edit: ->
    App.User.find @params.id, (error, resource) =>
      if resource
        @render "edit"
      else
        @redirectTo "index"

  update: ->
    App.User.find @params.id (error, resource) =>
      if error
        @redirectTo "edit"
      else
        resource.updateAttributes @params.user, (error) =>
          @redirectTo @urlFor(resource)

  destroy: ->
    App.User.find @params.id, (error, resource) =>
      if error
        @redirectTo "index"
      else
        resource.destroy (error) =>
          @redirectTo "index"
