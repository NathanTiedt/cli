
const { series, src, symlink } = require('gulp');
const git = require('gulp-git');
const HOME_DIR = require('os').homedir();
const fs = require('fs');

function callback(err) {
  if (err) console.error(err);
}

function cloneVimFiles() {
  if (fs.existsSync(`${HOME_DIR}/nate/.vim`)) 
    return git.pull({ cwd: `${HOME_DIR}/nate/.vim` }, callback);
  return git.clone('https://github.com/NathanTiedt/vim-files.git', { args: `.vim/`, cwd: `${HOME_DIR}/nate/` }, callback);
}

function updateSubModules() {
  if (!fs.existsSync(`${HOME_DIR}/nate/.vim`)) return Promise.resolve('All Good');
  return git.updateSubmodule({ args: '--init', cwd: `${HOME_DIR}/nate/.vim/` });
}

function symlinkVimRc() {
  if (fs.existsSync(`${HOME_DIR}/nate/.vimrc`)) return Promise.resolve('All Good');
  return src(`${HOME_DIR}/nate/.vim/.vimrc`)
    .pipe(symlink(`${HOME_DIR}/nate/`));
}

module.exports = series(
  cloneVimFiles,
  updateSubModules,
  symlinkVimRc
);
