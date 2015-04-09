require! {
  react
  elementary: $
  'react-tap-event-plugin'
  './components/main'
  './less/app.less'
}

react-tap-event-plugin!

react.render $(main), document.body
