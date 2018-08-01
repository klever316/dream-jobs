$(document).on 'turbolinks:load', ->
  $('.sidenav').sidenav()
  return

document.addEventListener 'turbolinks:load', ->
  elem = document.querySelector('#slide-out')
  instance = new (M.Sidenav)(elem, {})
  return
document.addEventListener 'turbolinks:before-visit', ->
  elem = document.querySelector('#slide-out')
  instance = M.Sidenav.getInstance(elem)
  if instance
    instance.destroy()
  return
