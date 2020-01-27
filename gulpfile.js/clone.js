
const { series } = require('gulp');
const git = require('gulp-git');
const HOME_DIR = require('os').homedir();
const fs = require('fs');

function callback(err) {
  if (err) console.log(err);
}

function ale() {
  if (fs.existsSync(`${HOME_DIR}/.vim/bundle/ale`)) return Promise.resolve('All good');
  return git.clone('https://github.com/w0rp/ale', {args: `.vim/bundle/ale`, cwd: `${HOME_DIR}/`}, callback);
}

module.exports = series(
  ale
);
