
const shell = require('shelljs');

let url = 'https://bitbucket.org/redzoneco/${repo}/pull-requests/new?source=${source}&dest=${destination}';
const BASE_URL = 'https://bitbucket.org/redzoneco/';

module.exports = {
  checkout: checkout,
  createPullRequest: createPullRequest,
  publish: publish,
  pull: pull,
  push: push,
};

function checkout ( branch, options='' ) {
  shell.exec(`git checkout ${options} ${branch}`);
}

function createPullRequest (source, destination) {
  let repo = shell.exec('basename `git rev-parse --show-toplevel`').replace('\n', '');
  let url = `${BASE_URL}${repo}/pull-requests/new?source=${source}&dest=${destination}`;
  console.log(`url ${url}`);
  shell.exec(`open "${url}"`);
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
