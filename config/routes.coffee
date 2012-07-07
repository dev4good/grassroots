Tower.Route.draw ->
  @resources "users"
  # @match "(/*path)", to: "application#index"
  @match "/", to: "application#welcome"