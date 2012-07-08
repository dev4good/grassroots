class App.ResourcesController extends App.ApplicationController
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

  # Search Results
  # Array of Resources after search/filter
  #
  # - Offer resources
  # - Name matches
  # - Not taken
  # - Available now
  # - Expires in future
  #
  search: (keyword) ->
    rawkeyword = unescape keyword
    keywords = rawkeyword.split ' '
    App.Resource.allOf('type': 'offer'
                     , 'title': "$in": keywords
                     , 'taker': "$eq" : null
                     , 'since': "$le": Time.now
                     , 'until': "$ge": Time.now).all(err, collection) =>
      @render json: collection

  # Array of Resources to be displayed on main page
  #
  # - Offer resources
  # - Not taken
  # - Available now or future
  # - Expires in future
  #
  offerlisted: ->
    App.Resource.allOf('type': 'offer'
                     , 'taker': "$eq" : null
                     , 'since': "$ge": Time.now
                     , 'until': "$ge": Time.now).all(err, collection) =>
      @render json: collection

  # Array of Resources takeable offers on main page
  #
  # - Offer resources
  # - Not taken
  # - Available now
  # - Expires in future
  #
  takeable: ->
    App.Resource.allOf('type': 'offer'
                     , 'taker': "$eq" : null
                     , 'since': "$le": Time.now
                     , 'until': "$ge": Time.now).all(err, collection) =>
      @render json: collection

  # Array of Resources fulfilable requests on main page
  #
  # - Request resources
  # - Not taken
  # - Available now
  # - Expires in future
  #
  fulfilable: ->
    App.Resource.allOf('type': 'request'
                     , 'taker': "$eq" : null
                     , 'since': "$le": Time.now
                     , 'until': "$ge": Time.now).all(err, collection) =>
      @render json: collection

  # User marks resources as 'taken'
  #
  consume: (id, uid) ->
    App.Resource.find uid, (err, usr) =>
      App.Resource.update '_id': id, '$set' : 'taken': usr, (err) =>
        console.log err
