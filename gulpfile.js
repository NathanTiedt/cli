
const { dest, src } = require('gulp');
const git = require('gulp-git');
const HOME_DIR = require('os').homedir();
const fs = require('fs');

function copyRcFiles() {
  return src('misc/**/.*', { dot: true })
    .pipe(dest(`${HOME_DIR}/nate/`));
}

exports.copy = copyRcFiles;
