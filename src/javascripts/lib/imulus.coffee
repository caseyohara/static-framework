module 'Imulus'

Imulus.VERSION = '0.1.0'

Imulus.elementSupportsAttribute = (element, attribute)->
    attribute in document.createElement element

