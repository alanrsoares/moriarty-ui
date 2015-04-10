require! {
  elementary: $
  './app-header'
  './splash'
  './content'
}

module.exports = $.component do
  render: ->
    $.div class-name: 'mui-app-canvas',
      $ app-header
      $ splash
      $ content
