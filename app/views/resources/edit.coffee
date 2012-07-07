@title = "Editing Resource"

partial "form"

contentFor "sidebar", ->
  header class: "widget header", ->
    h2 @resource.toLabel()