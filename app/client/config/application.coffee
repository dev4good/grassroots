class App extends Tower.Application
  @configure ->
    @use Tower.Middleware.Agent
    @use Tower.Middleware.Location
    @use Tower.Middleware.Router

  bootstrap: (data) ->
    @Event.load(data.events) if data.events
    @User.load(data.users) if data.users

window.App = (new App).initialize()
