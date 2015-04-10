require! {
  elementary: $
  './content-form'
  './content-contact'
}

module.exports = $.component do
  render: ->
    $.section class-name: 'content',
      $.h2 class-name: 'content-head is-center',
        'Dolore magna aliqua. Uis aute irure.'
      $.div class-name: 'pure-g',
        $ content-form
        $ content-contact
