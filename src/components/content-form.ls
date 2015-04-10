require! {
  elementary: $
  './labeled-input'
}

module.exports = $.component do
  render: ->
    $.div class-name: 'l-box-lrg pure-u-1 pure-u-md-2-5',
      $.form class-name: 'pure-form pure-form-stacked',
        $.fieldset,
          $ labeled-input, id: 'name' label: 'Your Name'
          $ labeled-input, id: 'email' type: 'email' label: 'Your Email'
          $ labeled-input, id: 'password' type: 'password' label: 'Your Password' placeholder: 'Your Password'
          $.button type: 'submit' class-name: 'pure-button',
            'Sign Up'
