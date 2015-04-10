require! {
  elementary: $
}

module.exports = $.component do
  render: ->
    $.div class-name: 'l-box-lrg pure-u-1 pure-u-md-3-5',
      $.h4 'Contact Us'
      $.p null,
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
         tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
         quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
         consequat."
      $.h4 'More Information'
      $.p null,
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
         tempor incididunt ut labore et dolore magna aliqua."
