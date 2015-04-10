require! {
  elementary: $
}

module.exports = $.component do
  render: ->
    $.div class-name: 'splash-container',
      $.div class-name: 'splash',
        $.h1 class-name: 'splash-head',
          'Get started'
        $.p class-name: 'splash-subhead',
          'Have a look at our docs'
