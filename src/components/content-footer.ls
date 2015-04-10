require! {
  elementary: $
}

module.exports = $.component do
  render: ->
    $.section class-name: 'footer l-box is-center',
      'copyright @ 2015 - Join our IRC Channel'
