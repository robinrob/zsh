source $ZSHCOLORS_PATH


function log {
  CMD=$1

  result=$(eval $CMD)
  printf "$(green)${CMD}: $(yellow)$result"
}

function lognl {
  log $@
  printf "\n"
}

function log2nl {
  log $@
  printf "\n"; printf "\n"
}
