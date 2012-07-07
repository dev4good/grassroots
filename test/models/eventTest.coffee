event = null

describe "App.Event", ->
  describe "fields", ->
    beforeEach (done) ->
      event = new App.Event
        title: "A title"
        description: "A description"
        location: "A location"
        tags: "A tags"
        type: "A type"
        responded: "A responded"

      done()

    test "title", ->
      assert.ok event.get("title")

    test "description", ->
      assert.ok event.get("description")

    test "location", ->
      assert.ok event.get("location")

    test "tags", ->
      assert.ok event.get("tags")

    test "type", ->
      assert.ok event.get("type")

    test "responded", ->
      assert.ok event.get("responded")

  describe "relations", ->
