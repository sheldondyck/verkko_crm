class VerkkoCrm.Views.ProspectsIndex extends Backbone.View

  template: JST['prospects/index']

  initialize: ->
    @collection.on('reset', @render, this)

  render: ->
    $(@el).html(@template(prospects: @collection))
    this
