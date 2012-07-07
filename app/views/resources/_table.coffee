tableFor "resources", (t) ->
  t.head ->
    t.row ->
      t.header "name", sort: true
      t.header "description", sort: true
      t.header "location", sort: true
      t.header "tags", sort: true
      t.header "photo", sort: true
  t.body ->
    for resource in @resources
      t.row class: "resource", "data-id": resource.get('id').toString(), ->
        t.cell -> resource.get("name")
        t.cell -> resource.get("description")
        t.cell -> resource.get("location")
        t.cell -> resource.get("tags")
        t.cell -> resource.get("photo")
        t.cell ->
          linkTo 'Show', urlFor(resource)
          span "|"
          linkTo 'Edit', urlFor(resource, action: "edit")
          span "|"
          linkTo 'Destroy', urlFor(resource), "data-method": "delete"
  t.foot ->
    t.row ->
      t.cell colspan: 8, ->
        linkTo 'New Resource', urlFor(App.Resource, action: "new")
