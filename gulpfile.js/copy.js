
const { dest, src } = require('gulp');
const HOME_DIR = require('os').homedir();

function copyHiddenFiles() {
  return src('misc/**/.*', { dot: true })
    .pipe(dest(`${HOME_DIR}/`));
}

module.exports = copyHiddenFiles;
