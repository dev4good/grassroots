Tower.Route.draw ->
  @resources "events"
  @resources "resources"
  @resources "users"
  # @match "(/*path)", to: "application#index"
  @match "/", to: "application#welcome"
