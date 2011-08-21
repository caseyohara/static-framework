module 'Imulus'

Imulus.Forms = class
  constructor: ($form)->
    build()

  build = ->
    if not Imulus.elementSupportsAttribute 'input', 'placeholder'
      $('input[placeholder]').each ->
        $input = $(this)
        placeholder = $input.attr 'placeholder'
        $input.val(placeholder).addClass 'inactive'
        $input.bind
          focus : ->
            if $input.val() is placeholder
              $input.val('').removeClass 'inactive'
          blur : ->
            if $input.val() is ''
              $input.val(placeholder).addClass 'inactive'