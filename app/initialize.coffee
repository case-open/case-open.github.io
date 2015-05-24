# Write your code here!


prise =
  'CS:GO Weapon #2':  ['/images/1-1.png','/images/1-2.png','/images/1-3.png']
  'CS:GO Weapon #3':  ['/images/2-1.png','/images/2-2.png','/images/2-3.png']
  'eSports 2013':     ['/images/3-1.png','/images/3-2.png','/images/3-3.png']
  'Winter Offensive':  ['/images/4-1.png','/images/4-2.png','/images/4-3.png']
  'eSports 2013 Winter': ['/images/5-1.png','/images/5-2.png','/images/5-3.png']
  'eSports 2014 Summer': ['/images/6-1.png','/images/6-2.png','/images/6-3.png']




createBackground = ->
  pattern = Trianglify
    width: window.innerWidth,
    height: window.innerHeight
  $('canvas').remove()
  $('body').append(pattern.canvas())




$(document).ready ->
  createBackground()

  # $('#modal').modal()
  # $('#game').modal()
  $('.item').click ->
    $('#game .modal-body').html('<button class="roll">Крутить рулетку</button>')
    $('.roll').off 'click'
    $('#game').modal('show')
    box = $(this).data('key')

    $('.roll').click ->

      win = false
      x = Math.random()
      console.log x

      if x > 0.7
        if x > 0.9
          win = prise[box][1]
        else if x > 0.8
          win = prise[box][2]
        else
          win = prise[box][3]

      if win
        $('#game .modal-body').html("Вы выиграли! <br> <img src=#{win}>")
      else
        $('#game .modal-body').html("Вы проиграли, может быть в следующий раз вам повезет больше")



$(window).resize ->
  createBackground()






