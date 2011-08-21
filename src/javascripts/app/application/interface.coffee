module 'Application'

Application.Interface = class

  constructor : ->
    build()

  build = ->
    new Imulus.Forms
