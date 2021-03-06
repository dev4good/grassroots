class App.UsersController extends Tower.Controller
  @on "click .user a[data-method='delete']", "destroy"

  # example
  destroy: (event) ->
    row       = $(event.target).closest('[data-id]')
    id        = row.attr('data-id')

    try
      @resourceKlass().destroy id, (error, resource) =>
        row.remove()
    catch error
      console.log error

    false
