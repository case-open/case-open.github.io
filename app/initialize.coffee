# Write your code here!

createBackground = ->
  pattern = Trianglify
    width: window.innerWidth,
    height: window.innerHeight
  $('canvas').remove()
  $('body').append(pattern.canvas())

$(document).ready ->
  createBackground()



$(window).resize ->
  createBackground()






