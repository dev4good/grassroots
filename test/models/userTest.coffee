user = null

describe "App.User", ->
  describe "fields", ->
    beforeEach (done) ->
      user = new App.User
        nick: "A nick"
        firstname: "A firstname"
        lastname: "A lastname"

      done()

    test "nick", ->
      assert.ok user.get("nick")

    test "firstname", ->
      assert.ok user.get("firstname")

    test "lastname", ->
      assert.ok user.get("lastname")

  describe "relations", ->
