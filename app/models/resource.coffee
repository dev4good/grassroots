class App.Resource extends Tower.Model
  @field "name",        type: "String"
  @field "description", type: "String"
  @field "since",       type: "DateTime"
  @field "until",       type: "DateTime"
  @field "location",    type: "Geo"
  @field "tags",        type: [ "String" ], default: []
  @field "type",        type: "String" # { 'offer', 'request' }

  @hasOne    "taker", type: "User"
  @belongsTo "owner", type: "User"

  @timestamps()
