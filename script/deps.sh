#
# Installs our dependencies
#


# Stop on error
set -e


# utilities
source script/utils.sh


# script variables
LOG_TITLE="deps"


if [ ! hash gitbook > /dev/null 2>&1 ]
then
  log "installing gitbook globally" 0
  npm install -g gitbook
fi

