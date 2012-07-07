Tower.Route.draw ->
  @resources "events"
  @resources "resources"
  @resources "users"

  @match "/me", to: "application#userinfo" # Show user page
  @match "/offer", to: "application#offer" # Show offer page

  @match "/item/add", to: "event#new"
  @match "/item/:id", to: "event#show"
  @match "/item/:id/markdone", to: "event#markdone", via: "post"
  
  @match "/", to: "application#welcome"
