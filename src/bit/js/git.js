
const shell = require('shelljs');

const BASE_URL = 'https://bitbucket.org/redzoneco/';

module.exports = {
  checkout: checkout,
  createPullRequest: createPullRequest,
  commit: commit,
  deleteBranch: deleteBranch,
  publish: publish,
  pull: pull,
  push: push,
};

function checkout ( branch, options='' ) {
  shell.exec(`git checkout ${options} ${branch}`);
}

function commit ( message='bit commit' ) {
  shell.exec(`git commit -am '${message}'`);
}

function createPullRequest (source, destination) {
  let repo = shell.exec('basename `git rev-parse --show-toplevel`').replace('\n', '');
  let url = `${BASE_URL}${repo}/pull-requests/new?source=${source}&dest=${destination}`;
  shell.exec(`open "${url}"`);
}

function deleteBranch ( branch ) {
  shell.exec(`git branch -d ${branch}`);
}

function publish ( branch ) {
  shell.exec(`git push --set-upstream origin ${branch}`);
}

function pull () {
  shell.exec('git pull');
}

function push () {
  shell.exec('git push');
}
