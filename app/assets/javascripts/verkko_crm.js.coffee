window.VerkkoCrm =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new VerkkoCrm.Routers.Prospects
    Backbone.history.start()

$(document).ready ->
  VerkkoCrm.initialize()
