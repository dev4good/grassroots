Tower.Route.draw ->
  @resources "events"
  @resources "users"
  # @match "(/*path)", to: "application#index"
  @match "/", to: "application#welcome"