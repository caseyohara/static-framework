#### VENDOR
#= require vendor/jquery.js
#= require jquery/**/*.js

#### LIBS
#= require lib/extensions.coffee
#= require lib/imulus.coffee
#= require imulus/forms.coffee

#### APP
#= require app/application.coffee
#= require application/interface.coffee

$ ->
  new Application.Interface
