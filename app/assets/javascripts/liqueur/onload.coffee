#= require jquery
#= require turbolinks

$.onload = (fn)->
  $(window).bind('page:load', fn)
  $(fn)

