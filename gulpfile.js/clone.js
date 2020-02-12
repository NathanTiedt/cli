
const { series, src, symlink } = require('gulp');
const git = require('gulp-git');
const HOME_DIR = require('os').homedir();
const fs = require('fs');

function callback(err) {
  if (err) console.error(err);
}

function cloneVimFiles() {
  if (fs.existsSync(`${HOME_DIR}/.vim`)) 
    return git.pull({ cwd: `${HOME_DIR}/.vim` }, callback);
  return git.clone('git@github.com:NathanTiedt/vim-files.git', { args: `.vim/`, cwd: `${HOME_DIR}/` }, callback);
}

function updateSubModules() {
  if (!fs.existsSync(`${HOME_DIR}/.vim`)) return Promise.resolve('All Good');
  return git.updateSubmodule({ args: '--init', cwd: `${HOME_DIR}/.vim/` });
}

function symlinkVimRc() {
  if (fs.existsSync(`${HOME_DIR}/.vimrc`)) return Promise.resolve('All Good');
  return src(`${HOME_DIR}/.vim/.vimrc`)
    .pipe(symlink(`${HOME_DIR}/`));
}

module.exports = series(
  cloneVimFiles,
  updateSubModules,
  symlinkVimRc
);
