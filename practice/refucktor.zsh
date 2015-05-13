#!/usr/bin/env zsh

[[ $fpath = *dotfiles-base* ]] || fpath=($FUNCS_HOME $fpath)
autoload -U +X $fpath[1]/*(:t) 2> /dev/null

# sed_all 's/this\.origin/this\.r\.origin/g'
# sed_all 's/this\.jointPs/this\.r\.jointPs/g'
# sed_all 's/this\.size/this\.r\.size/g'
# sed_all 's/this\.width/this\.r\.width/g'
# sed_all 's/this\.height/this\.r\.height/g'
# sed_all 's/this\.radius/this\.r\.radius/g'
# sed_all 's/this\.mass/this\.r\.mass/g'
# sed_all 's/this\.comps/this\.r\.comps/g'
# sed_all 's/this\.constraints/this\.r\.constraints/g'
# sed_all 's/that\.constraints/that\.r\.constraints/g'
# sed_all 's/this\.shape/this\.r\.shape/g'
# sed_all 's/this\.space/this\.r\.space/g'
# sed_all 's/this\.draw/this\.r\.draw/g'
# sed_all 's/this\.thickness/this\.r\.thickness/g'
# sed_all 's/this\.body/this\.r\.body/g'
# sed_all 's/this\.center/this\.r\.center/g'
# sed_all 's/this\.left/this\.r\.left/g'
# sed_all 's/this\.right/this\.r\.right/g'
# sed_all 's/this\.top/this\.r\.top/g'
# sed_all 's/this\.bottom/this\.r\.bottom/g'
# sed_all 's/this\.layer/this\.r\.layer/g'
# sed_all 's/this\.length/this\.r\.length/g'
# sed_all 's/this\.state/this\.r\.state/g'
# sed_all 's/this\._color/this\.r\.color/g'
# sed_all 's/this\.color/this\.r\.color/g'
# sed_all 's/this\.segments/this\.r\.segments/g'
# sed_all 's/this\.rotation/this\.r\.rotation/g'
# sed_all 's/this\.angle/this\.r\.angle/g'
# sed_all 's/this\.world/this\.r\.world/g'
# sed_all 's/this\.box/this\.r\.box/g'


sed_all 's/\.r\.origin/\.getOrigin\(\)/g'
sed_all 's/\.r\.size/\.getSize\(\)/g'

