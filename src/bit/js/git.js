
const shell = require('shelljs');

module.exports = {
  checkout: checkout,
  pull: pull,
  publish: publish,
};

function checkout ( branch, options='' ) {
  shell.exec(`git checkout ${options} ${branch}`);
}

function publish ( branch ) {
  shell.exec(`git push --set-upstream origin ${branch}`);
}

function pull () {
  shell.exec('git pull');
}
