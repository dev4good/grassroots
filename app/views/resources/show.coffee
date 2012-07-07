@title = "Resource #{@resource.toLabel()}"

dl class: "content", ->
  dt "Name:"
  dd @resource.get("name")
  dt "Description:"
  dd @resource.get("description")
  dt "Location:"
  dd @resource.get("location")
  dt "Tags:"
  dd @resource.get("tags")
  dt "Photo:"
  dd @resource.get("photo")
