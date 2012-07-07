event = null

describe "App.Event", ->
  describe "fields", ->
    beforeEach (done) ->
      event = new App.Event
        title: "A title"
        description: "A description"
        location: "A location"
        tags: "A tags"

      done()

    test "title", ->
      assert.ok event.get("title")

    test "description", ->
      assert.ok event.get("description")

    test "location", ->
      assert.ok event.get("location")

    test "tags", ->
      assert.ok event.get("tags")

  describe "relations", ->
