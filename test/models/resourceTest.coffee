resource = null

describe "App.Resource", ->
  describe "fields", ->
    beforeEach (done) ->
      resource = new App.Resource
        name: "A name"
        description: "A description"
        location: "A location"
        tags: "A tags"
        photo: "A photo"

      done()

    test "name", ->
      assert.ok resource.get("name")

    test "description", ->
      assert.ok resource.get("description")

    test "location", ->
      assert.ok resource.get("location")

    test "tags", ->
      assert.ok resource.get("tags")

    test "photo", ->
      assert.ok resource.get("photo")

  describe "relations", ->
