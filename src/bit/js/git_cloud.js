
const bitbucketUrl = 'http://bitbucket.org/api/2.0/repositories/';
const creds = require('bit-creds');
const request = require('superagent');
const shell = require('shelljs');

/* 
 * this was supposed to be a way of creating pull-requests
 * but oauth is needed and i'm taking the easy way out
 *
 * @deprecated
 * @name git-cloud
 */
module.exports = {
  createPullRequest: createPullRequest,
};

function createPullRequest () {
  let url = shell.exec('git config --local remote.origin.url').stdout;
  let repoPath = url.split(':')[1].replace('.git', '');
  console.log('repoPath', repoPath);
  request
    .post(bitbucketUrl + repoPath)
    .auth(creds.username, creds.password)
    .set('Accept', 'application/json')
    .end( (err, res) => {
      if (!err && res.ok) {
        console.log('Done here:', res);
      } else {
        console.log('Something Went Wrong!', err.message);
      }
    });
}
