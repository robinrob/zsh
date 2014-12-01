#!/usr/bin/env zsh

source $ZSHLOG_PATH


cyan "Case statement:"

log "VAL=$1

function usage {
  echo 'Usage: ./case.zsh <name>'
}

case \$VAL in
  robin) echo 'Pogi!' ;;
  alma) echo 'Maganda!' ;;
  *) usage ;;
esac"


log


cyan "Alternatives in case matches:"

log 'read var
case $var in
  (yes|true|1) print Reply was affirmative
               ;;
  (no|false|0) print Reply was negative
               ;;
  (*) print Reply was cobblers
           ;;
esac'
