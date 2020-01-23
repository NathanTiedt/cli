
const { dest, src } = require('gulp');

function copyRcFiles() {
  return src('misc/*')
    .pipe(dest('~/'));
}

exports.copy = copyRcFiles;
