class VerkkoCrm.Routers.Prospects extends Backbone.Router
  routes:
    'prospects':        'index'
    'prospects/:id':    'show'

  initialize: ->
    @prospect_collection = new VerkkoCrm.Collections.Prospects()
    @prospect_collection.fetch()

  index: ->
    view = new VerkkoCrm.Views.ProspectsIndex(collection: @prospect_collection)
    $('#prospect_index').html(view.render().el)

  show: (id) ->
    alert "Prospect #{id}"
