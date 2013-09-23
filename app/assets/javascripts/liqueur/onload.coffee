#= require jquery

$.onload = (fn)->
  $(window).bind('page:load', fn)
  $(fn)

