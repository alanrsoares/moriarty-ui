require! {
  react
  elementary: $
  'react-tap-event-plugin'
  './components/main'
  './styles/css/landing.css'
}

react-tap-event-plugin!

react.render $(main), document.body
