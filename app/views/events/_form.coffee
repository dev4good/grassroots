formFor @event, (f) ->
  f.fieldset (fields) ->
    fields.field "title", as: "string"
    fields.field "description", as: "string"
    fields.field "location", as: "string"
    fields.field "tags", as: "string"
    fields.field "type", as: "string"
    fields.field "responded", as: "string"
  f.fieldset (fields) ->
    fields.submit "Submit"
