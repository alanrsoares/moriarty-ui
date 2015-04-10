require! {
  elementary: $
}

module.exports = $.component do
  render: ->
    $.div class-name: 'header',
      $.div class-name: 'home-menu pure-menu pure-menu-horizontal pure-menu-fixed',
        $.a { class-name: 'pure-menu-heading' href: '' } 'Moriarty.io'
        $.ul class-name: 'pure-menu-list',
          $.li class-name: 'pure-menu-item pure-menu-selected',
            $.a class-name: 'pure-menu-link',
              'Home'
          $.li class-name: 'pure-menu-item',
            $.a class-name: 'pure-menu-link' href: '#',
              'Docs'
          $.li class-name: 'pure-menu-item',
            $.a class-name: 'pure-menu-link' href: '#',
              'Sign In'
