$(document).on 'turbolinks:load', ->
  $flashMessage = $('#flash-message')
  notice = $flashMessage.data('notice')
  alert = $flashMessage.data('alert')

  Materialize.toast(notice, 4000, 'green') if notice
  Materialize.toast(alert, 10000, 'red') if alert
