var ETP = require("extract-text-webpack-plugin");

module.exports = {
  context: __dirname + '/../src',
  entry: './app.ls',
  devtool: "#inline-source-map",
  output: {
    path: __dirname + '/../build',
    filename: 'bundle.js'
  },
  module: {
    loaders: [
      { test: /\.less$/, loader: ETP.extract('style-loader', 'css-loader!less-loader') },
      { test: /\.css$/, loader: ETP.extract('style-loader', 'css-loader') },
      { test: /\.svg$/, loader: 'url-loader' },
      { test: /\.png$/, loader: 'url-loader' },
      { test: /\.ls$/, loader: 'livescript-loader' }
    ]
  },
  plugins: [
    new ETP("style.css", {
      allChunks: true
    })
  ],
  resolve: {
    extensions: ['', '.js', '.ls']
  }
};
