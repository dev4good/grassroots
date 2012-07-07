class App.Event extends Tower.Model
  @field "title", type: "String"
  @field "description", type: "String"
  @field "location", type: "Geo"
  @field "tags", type: "Array"
  @field "type", type: "String"
  @field "responded", type: "Boolean"

  @timestamps()
