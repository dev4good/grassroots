Tower.Route.draw ->
  @resources "events"
  @resources "resources"
  @resources "users"

  @match "/me", to: "application#userinfo", via: "get"  # Show user page

  @match "/offer", to: "event#new", via: "get"          # Show offer entry form
  @match "/item/add", to: "event#create", via: "post"   # Commit new offer
  @match "/item/:id", to: "event#show", via: "get"      # Display details of offer/req
  @match "/item/:id/respond", to: "event#respond", via: "post" # Mark responded
  
  @match "/", to: "application#welcome"
  @match '/auth/:provider', to: 'application#auth'
#  @match '/auth/google/return', to: 'application#authverify'
