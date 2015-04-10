require! {
  elementary: $
}

module.exports = $.component do
  render: ->
    $.span null,
      $.label html-for: @props.id,
        @props.label
      $.input do
        id: @props.id
        type: (@props.type or 'text')
        placeholder: (@props.placeholder or @props.label)
