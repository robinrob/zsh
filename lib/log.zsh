source $ZSHCOLORS_PATH


function log {
  CMD=$1

  result=$(eval $CMD)
  printf "$(green)${CMD}: $(yellow)$result"
}

function lognl {
  log $@
  echo
}
