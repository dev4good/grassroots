tableFor "events", (t) ->
  t.head ->
    t.row ->
      t.header "title", sort: true
      t.header "description", sort: true
      t.header "location", sort: true
      t.header "tags", sort: true
      t.header "type", sort: true
      t.header "responded", sort: true
  t.body ->
    for event in @events
      t.row class: "event", "data-id": event.get('id').toString(), ->
        t.cell -> event.get("title")
        t.cell -> event.get("description")
        t.cell -> event.get("location")
        t.cell -> event.get("tags")
        t.cell -> event.get("type")
        t.cell -> event.get("responded")
        t.cell ->
          linkTo 'Show', urlFor(event)
          span "|"
          linkTo 'Edit', urlFor(event, action: "edit")
          span "|"
          linkTo 'Destroy', urlFor(event), "data-method": "delete"
  t.foot ->
    t.row ->
      t.cell colspan: 9, ->
        linkTo 'New Event', urlFor(App.Event, action: "new")
