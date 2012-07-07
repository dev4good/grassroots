@title = "Editing Event"

partial "form"

contentFor "sidebar", ->
  header class: "widget header", ->
    h2 @event.toLabel()