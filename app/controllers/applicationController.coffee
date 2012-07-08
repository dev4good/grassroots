class App.ApplicationController extends Tower.Controller
  @layout "application"

  #
  # Display userinfo page
  # - Display all resources associated to user
  #
  userinfo: ->
    uid = "" # TODO Get current logged in user's ID
    App.User.find uid, (err, usr) =>
      console.log "User is: ", usr
      if App.Resource.count > 0
        App.Resource.anyOf( owner : _id: usr._id, taker: _id: usr._id).all(err, res) =>
          data = { user: usr, resources: res }
      else
        App.Resource.all(err, res) =>
          data = { user: usr, resources: [] }
          @render "userinfo", locals: data

  #
  # Display a landing page
  #
  landing: ->
    @render "landing"
