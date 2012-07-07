class App.Event extends Tower.Model
  @field "title", type: "String"
  @field "description", type: "String"
  @field "location", type: "Geo"
  @field "tags", type: ["String"], default: []
  @field "type", type: "String"
  @field "responded", type: "Boolean"

  @belongsTo "owner", type: "User"

  @hasMany "resources", as: "resourceable"

  @timestamps()
