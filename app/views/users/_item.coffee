li class: "user", ->
  header class: "header", ->
    h3 @user.toLabel()
  dl class: "content", ->
    dt "Nick:"
    dd @user.get("nick")
    dt "First name:"
    dd @user.get("firstName")
    dt "Last name:"
    dd @user.get("lastName")
  footer class: "footer", ->
    menu ->
      menuItem "Edit", urlFor(@user, action: "edit")
