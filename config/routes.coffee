Tower.Route.draw ->
  @resources "resources"
  @resources "events"
  @resources "users"
  # @match "(/*path)", to: "application#index"
  @match "/", to: "application#welcome"