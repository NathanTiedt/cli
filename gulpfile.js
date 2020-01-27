
const { dest, src } = require('gulp');

function copyRcFiles() {
  return src('misc/**/.*', { dot: true })
    .pipe(dest('~/nate/'));
}

exports.copy = copyRcFiles;
