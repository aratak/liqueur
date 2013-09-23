#= require jquery
#= require ./lib/jquery.maskedinput
#= require ./onload

$.onload ->
  $('[data-mask]').each ->
    $(@).mask $(@).data('mask')

