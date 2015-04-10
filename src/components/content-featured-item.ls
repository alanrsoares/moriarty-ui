require! {
  elementary: $
}

module.exports = $.component do
  render: ->
    $.div class-name: 'l-box pure-u-1 pure-u-md-1-2 pure-u-lg-1-4',
      $.h3 class-name: 'content-subhead',
        $.i class-name: 'fa fa-' + @props.icon
        @props.title
      $.p @props.text
