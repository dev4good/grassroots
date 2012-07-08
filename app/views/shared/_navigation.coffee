linkTo t("title"), "/", class: "brand"

div class: "nav-collapse", ->
  ul class: "nav", ->
    navItem t("links.users"), urlFor(App.User)
    navItem t("links.resources"), urlFor(App.Resource)
