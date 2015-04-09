require! {
  elementary: $
}

module.exports = $.component do
  render: ->
    $.header class-name: 'mui-app-bar mui-paper mui-z-depth-0',
      $.div class-name: 'mui-paper-container mui-z-depth-bottom',
        $.h1 class-name: 'mui-app-bar-title',
          'MORIARTY - Smart CDN'
