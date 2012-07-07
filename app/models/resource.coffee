class App.Resource extends Tower.Model
  @field "name", type: "String"
  @field "description", type: "String"
  @field "location", type: "Geo"
  @field "tags", type: ["String"], default: []
  @field "photo", type: "String"

  @belongsTo "owner", type: "User"
  @belongsTo "resourceable", polymorphic: true

  @timestamps()
