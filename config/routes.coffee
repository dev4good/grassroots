Tower.Route.draw ->
  @resources "events"
  @resources "resources"
  @resources "users"

  @match "/me", to: "application#userinfo", via: "get" # Show user page
  @match "/",   to: "application#landing",  via: "get" # Show landing page

  @match "/search/:keyword", to: "resources#search",  via: "get" # Search for keywords
  @match "/_filter/:prefix", to: "resources#findall", via: "get" # Get filtered JSON for autocomplete
