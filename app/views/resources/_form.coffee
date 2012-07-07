formFor @resource, (f) ->
  f.fieldset (fields) ->
    fields.field "name", as: "string"
    fields.field "description", as: "string"
    fields.field "location", as: "string"
    fields.field "tags", as: "string"
    fields.field "photo", as: "string"
  f.fieldset (fields) ->
    fields.submit "Submit"
