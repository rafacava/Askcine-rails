# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

pegarBotao = ->
  x = document.getElementsByName('commit')[0]
  x.classname = 'waves-effect waves-light btn-large black'
  return