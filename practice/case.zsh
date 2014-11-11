#!/usr/bin/env zsh

source $ZSHLOG_PATH



log "VAL=$1

function usage {
  echo 'Usage: ./case.zsh <name>'
}

case \$VAL in
  robin) echo 'Pogi!' ;;
  alma) echo 'Maganda!' ;;
  *) usage ;;
esac"
