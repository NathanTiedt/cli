
const run = require('gulp-run');

const packages = [
  'thefuck',
  'nnn', 
  'git-flow', 
  'tmux', 
  'telnet', 
  'jq', 
  'fzf', 
  'ack', 
  'htop', 
  'tig', 
  'typescript', 
  'terraform', 
  'postgres', 
  'docker', 
  'ctags',
];

function brewInstall() {
  const cmd = new run.Command(`brew install ${packages.join(' ')}`);
  return cmd.exec();
}

module.exports = brewInstall;
