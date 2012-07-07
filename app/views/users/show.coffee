@title = "User #{@user.toLabel()}"

dl class: "content", ->
  dt "Nick:"
  dd @user.get("nick")
  dt "First name:"
  dd @user.get("firstName")
  dt "Last name:"
  dd @user.get("lastName")
