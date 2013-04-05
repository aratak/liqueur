#= require jquery

$('body').on 'click', '[data-href]', -> window.location.href = $(this).attr('data-href')
