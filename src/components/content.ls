require! {
  elementary: $
}

feature-item = $.component do
  render: ->
    $.div class-name: 'l-box pure-u-1 pure-u-md-1-2 pure-u-lg-1-4',
      $.h3 class-name: 'content-subhead',
        $.i class-name: 'fa fa-' + @props.icon
        @props.title
      $.p @props.text

featured-section = $.component do
  get-initial-state: ->
    {
      featured-items:
        * title: 'Active updates'
          icon: 'rocket'
          text: 'Super cool'

        * title: 'Active updates'
          icon: 'mobile'
          text: 'Really bro, you gotta check it out'

        * title: 'Active updates'
          icon: 'rocket'
          text: 'Not kidding, mate!'

        * title: 'Did I Say Active updates?'
          icon: 'rocket'
          text: 'Not kidding, mate!'
    }

  featured-items: ->
    @state.featured-items.map (feature, key) ->
      $ feature-item, feature

  render: ->
    $.section class-name: 'pure-g',
      @featured-items!

ribbon-section = $.component do
  render: ->
    $.section class-name: 'ribbon l-box-lrg pure-g',

      $.div class-name: 'l-box-lrg is-center pure-u-1 pure-u-md-1-2 pure-u-lg-2-5',
        $.img do
          width: '300'
          class-name: 'pure-img-responsive'
          src: 'http://purecss.io/img/common/file-icons.png'

      $.div class-name: 'pure-u-1 pure-u-md-1-2 pure-u-lg-3-5',
        $.h2 class-name: 'content-head content-head-ribbon',
          'Another level2 heading'
        $.p "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
            consequat. Duis aute irure dolor."

labeled-input = $.component do
  render: ->
    $.span null,
      $.label html-for: @props.id,
        @props.label
      $.input do
        id: @props.id
        type: (@props.type or 'text')
        placeholder: (@props.placeholder or @props.label)

form = $.component do
  render: ->
    $.div class-name: 'l-box-lrg pure-u-1 pure-u-md-2-5',
      $.form class-name: 'pure-form pure-form-stacked',
        $.fieldset,
          $ labeled-input, id: 'name' label: 'Your Name'
          $ labeled-input, id: 'email' type: 'email' label: 'Your Email'
          $ labeled-input, id: 'password' type: 'password' label: 'Your Password' placeholder: 'Your Password'
          $.button type: 'submit' class-name: 'pure-button',
            'Sign Up'

contact = $.component do
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

form-and-contact = $.component do
  render: ->
    $.section class-name: 'content',
      $.h2 class-name: 'content-head is-center',
        'Dolore magna aliqua. Uis aute irure.'
      $.div class-name: 'pure-g',
        $ form
        $ contact

footer = $.component do
  render: ->
    $.section class-name: 'footer l-box is-center',
      'copyright @ 2015 - Join our IRC Channel'

module.exports = $.component do
  render: ->
    $.div class-name: 'content-wrapper',
      $.div class-name: 'content',
        $.h2 { class-name: 'content-head is-center' } 'What\'s in the package?'
        $ featured-section
        $ ribbon-section
        $ form-and-contact
        $ footer
