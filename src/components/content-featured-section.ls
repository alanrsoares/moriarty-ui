require! {
  elementary: $
  './content-featured-item'
}

module.exports = $.component do
  get-initial-state: ->
    {
      featured-items:
        * title: 'Versionable'
          icon: 'code-fork'
          text: 'Super cool'

        * title: 'Cloud'
          icon: 'cloud'
          text: 'Really bro, you gotta check it out'

        * title: 'Fast'
          icon: 'rocket'
          text: 'Not kidding, mate!'

        * title: 'Did I Say Active updates?'
          icon: 'clock-o'
          text: 'Not kidding, mate!'
    }

  featured-items: ->
    @state.featured-items.map (feature, key) ->
      $ content-featured-item, feature

  render: ->
    $.section class-name: 'pure-g',
      @featured-items!
