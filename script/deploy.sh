#
# Deploy site to the gh-pages branch
#


# Stop on error
set -e


# utilities
source script/utils.sh


# script variables
LOG_TITLE="deploy"
REPO_URL="https://github.com/forfuture-dev/javascript.git"


log "cloning repo (afresh)" 0
git clone "${REPO_URL}" _repo


log "cd into repo and rm all files" 0
cd _repo
git rm -rf *
rm -rf *


log "copying gitbook output to gh-pages branch" 0
cp -r ../_book/* .


log "configuring git" 0
git config user.email "we@forfuture.co.ke" 0
git config user.name "ForfutureLLC"


log "adding and committing changes" 0
git add -A .
git commit -a -m "Build ${TRAVIS_BUILD_NUMBER}"


log "adding authentication key (belongs to GochoMugo)" 0
echo -e "machine github.com\n  login mugo@forfuture.co.ke\n  password ${GH_TOKEN}" >> ~/.netrc


log "pushing changes to remote" 0
git push origin gh-pages > /dev/null \
  && log "successful deployment" 1 \
  || log "failed deployment" 2

