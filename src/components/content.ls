require! {
  elementary: $
  './content-featured-section'
  './content-ribbon-section'
  './content-form-and-contact-section'
  './content-footer'
}

module.exports = $.component do
  render: ->
    $.div class-name: 'content-wrapper',
      $.div class-name: 'content',
        $.h2 { class-name: 'content-head is-center' } 'What\'s in the package?'
        $ content-featured-section
        $ content-ribbon-section
        $ content-form-and-contact-section
        $ content-footer
