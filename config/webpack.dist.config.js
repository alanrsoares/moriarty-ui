var merge = require('object-assign');
var config = require('./webpack.config');

var overrides = {
  devtool: '',
  output: {
    path: __dirname + '/../dist',
    filename: 'bundle.js'
  }
};

module.exports = merge(config, overrides);
