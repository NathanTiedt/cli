
const { series } = require('gulp');
const clone = require('./clone');
const copy = require('./copy');

exports.clone = clone;
exports.copy = copy;

exports.setup = series(
  clone,
  copy
);
