require! {
  elementary: $
  './app-header'
}

module.exports = $.component do
  render: ->
    $.div class-name: 'mui-app-canvas mui-predefined-layout-1',
      $ app-header
      $.div class-name: 'mui-app-content-canvas',
        'Content'
