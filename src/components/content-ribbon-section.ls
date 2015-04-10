require! {
  elementary: $
}

module.exports = $.component do
  render: ->
    $.section class-name: 'ribbon l-box-lrg pure-g',
      #img placeholder
      $.div class-name: 'l-box-lrg is-center pure-u-1 pure-u-md-1-2 pure-u-lg-2-5',
        $.img do
          width: '300'
          class-name: 'pure-img-responsive'
          src: 'http://purecss.io/img/common/file-icons.png'
      #cool info
      $.div class-name: 'pure-u-1 pure-u-md-1-2 pure-u-lg-3-5',
        $.h2 class-name: 'content-head content-head-ribbon',
          'Another level2 heading'
        $.p "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
            consequat. Duis aute irure dolor."
