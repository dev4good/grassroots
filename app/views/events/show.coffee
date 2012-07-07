@title = "Event #{@event.toLabel()}"

dl class: "content", ->
  dt "Title:"
  dd @event.get("title")
  dt "Description:"
  dd @event.get("description")
  dt "Location:"
  dd @event.get("location")
  dt "Tags:"
  dd @event.get("tags")
  dt "Type:"
  dd @event.get("type")
  dt "Responded:"
  dd @event.get("responded")
