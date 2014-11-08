source $ZSHCOLORS_PATH


function log {
  CMD=$1

  if [[ -n $CMD ]]
  then  
    result=$(eval $CMD)
    printf "$(green)${CMD}: $(yellow)$result"
  fi
  printf "\n"
}

function lognl {
  log $@
  printf "\n"
}

function log2nl {
  log $@
  printf "\n"; printf "\n"
}
