class App.Resource extends Tower.Model
  @field "name", type: "String"
  @field "description", type: "String"
  @field "location", type: "Geo"
  @field "tags", type: "Array"
  @field "photo", type: "String"

  @timestamps()
