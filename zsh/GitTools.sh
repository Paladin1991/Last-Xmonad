#/usr/bin/env bash

#=============
# GitHub Tools
#=============

#=====
# PPL1
#=====

Git-Status_PPL1(){

GitDir(){
gitdir=$(git rev-parse --is-inside-work-tree 2>/dev/null)

if [[ $gitdir = true ]]; then
  echo -e "%F{#74a3c2}%K{#74a3c2} %F{#121212}  %f%F{#121212} Master%f %k%F{#74a3c2}%f"
fi
}

Modify(){
sts1=$(git status 2>/dev/null | grep modified | awk '{print $1}')

    if [[ $sts1 = modified: ]]; then
        echo "%F{#97d6fd}%K{#97d6fd}%F{#F12345}🆕%f%k%F{#97d6fd}%f"
    fi
}

Commit(){
    num_modify=$(git status 2> /dev/null | grep modified: | wc -l)
    sts2=$(git status 2>/dev/null | grep "changes added" | wc -l)

    if [[ $sts2 = 1 ]]; then
      echo "%F{#97d6fd}%f%K{#97d6fd}%F{#FFF000}🆙%f %F{#121212}(%F{#FF0000}$num_modify%f%F{#121212})%F{#121212} for%f %F{#00ab00}add %F{#121212}and %F{#0078ab}commit%k%f%F{#97d6fd}%f"
    fi
}

Push(){
  sts3=$(git status 2>/dev/null | grep 'use "git push"' | sed -n 1p | wc -l)

  if [[ $sts3 = 1 ]]; then
    echo -e "%F{#97d6fd}%K{#97d6fd}%F{#F34567}🔝%f %F{#121212}push %k%F{#97d6fd}%f"
  fi
}

  echo -e "$(GitDir)$(Modify)$(Commit)$(Push)"

}

#=====
# PPL2
#=====

Git-Status_PPL2(){

GitDir(){
gitdir=$(git rev-parse --is-inside-work-tree 2>/dev/null)

if [[ $gitdir = true ]]; then
  echo -e "%F{#FFFFFF}%f%F{#FF0000}   %F{#0c81ff}Master%f"
fi
}

Modify(){
sts1=$(git status 2>/dev/null | grep modified | awk '{print $1}')

    if [[ $sts1 = modified: ]]; then
        echo "%F{#F12345} 🆕%f"
    fi
}

Commit(){
    num_modify=$(git status 2> /dev/null | grep modified: | wc -l)
    sts2=$(git status 2>/dev/null | grep "changes added" | wc -l)

    if [[ $sts2 = 1 ]]; then
      echo "%F{#FFF000}🆙%f (%F{#FF0000}$num_modify%f) for%f %F{#00ab00}add%f and %F{#0078ab}commit%f"
    fi
}

Push(){
  sts3=$(git status 2>/dev/null | grep 'use "git push"' | sed -n 1p | wc -l)

  if [[ $sts3 = 1 ]]; then
    echo -e "%F{#F34567}🔝%fpush"
  fi
}

  echo -e "$(GitDir)$(Modify)$(Commit)$(Push)"

}

#=====
# PPL3
#=====

Git-Status_PPL3(){

GitDir(){
gitdir=$(git rev-parse --is-inside-work-tree 2>/dev/null)

if [[ $gitdir = true ]]; then
  echo -e " %F{#FF0000}─(%f %f%F{#00ff00} Master%f%F{#FF0000})─%f"
fi
}

Modify(){
sts1=$(git status 2>/dev/null | grep modified | awk '{print $1}')

    if [[ $sts1 = modified: ]]; then
        echo "%F{#FF0000}(%F{#ff6262}🆕%f"
    fi
}

Commit(){
    num_modify=$(git status 2> /dev/null | grep modified: | wc -l)
    sts2=$(git status 2>/dev/null | grep "changes added" | wc -l)

    if [[ $sts2 = 1 ]]; then
      echo "%F{#f7ff5e}🆙%f (%F{#FF0000}$num_modify%f)%F{#FFFFFF} for%f %F{#73ff5d}add %F{#FFFFFF}and %F{#6978ff}commit%k%f%F{#FF0000})%f"
    fi
}

Push(){
  sts3=$(git status 2>/dev/null | grep 'use "git push"' | sed -n 1p | wc -l)

  if [[ $sts3 = 1 ]]; then
    echo -e "%F{#FF0000}(%F{#FFF000}🔝%f push%F{#FF0000})%f"
  fi
}

  echo -e "$(GitDir)$(Modify)$(Commit)$(Push)"

}

#=====
# PPL4
#=====
Git-Status_PPL4(){

GitDir(){
gitdir=$(git rev-parse --is-inside-work-tree 2>/dev/null)

if [[ $gitdir = true ]]; then
  echo -e "%K{#FFFFFF}%F{#121212}  %f%F{#00ff00} Master %f%k%F{#FFFFFF}%K{#121212} %k%f"
fi
}

Modify(){
sts1=$(git status 2>/dev/null | grep modified | awk '{print $1}')

    if [[ $sts1 = modified: ]]; then
        echo "%K{#121212}%F{#ff6262}🆕%f %k"
    fi
}

Commit(){
    num_modify=$(git status 2> /dev/null | grep modified: | wc -l)
    sts2=$(git status 2>/dev/null | grep "changes added" | wc -l)

    if [[ $sts2 = 1 ]]; then
      echo "%F{#f7ff5e}🆙 %K{#121212}%f(%F{#FF0000}$num_modify%f)%F{#FFFFFF} for%f %F{#73ff5d}add %F{#FFFFFF}and %F{#6978ff}commit%k%f"
    fi
}

Push(){
  sts3=$(git status 2>/dev/null | grep 'use "git push"' | sed -n 1p | wc -l)

  if [[ $sts3 = 1 ]]; then
    echo -e "%K{#121212}%F{#FF0000}🔝%f push  %k%f"
  fi
}

  echo -e "$(GitDir)$(Modify)$(Commit)$(Push)"

}


#=====
# PPL5
#=====
Git-Status_PPL5(){

GitDir(){
gitdir=$(git rev-parse --is-inside-work-tree 2>/dev/null)

if [[ $gitdir = true ]]; then
  echo -e "%F{#4b45ff}──┤%f %F{#00ff00} Master%f"
fi
}

Modify(){
sts1=$(git status 2>/dev/null | grep modified | awk '{print $1}')

    if [[ $sts1 = modified: ]]; then
        echo "%F{#ff6262}🆕%f"
    fi
}

Commit(){
    num_modify=$(git status 2> /dev/null | grep modified: | wc -l)
    sts2=$(git status 2>/dev/null | grep "changes added" | wc -l)

    if [[ $sts2 = 1 ]]; then
      echo "%F{#f7ff5e}🆙 %K{#121212}%f(%F{#FF0000}$num_modify%f)%F{#FFFFFF} for%f %F{#73ff5d}add %F{#FFFFFF}and %F{#6978ff}commit%k%f"
    fi
}

Push(){
  sts3=$(git status 2>/dev/null | grep 'use "git push"' | sed -n 1p | wc -l)

  if [[ $sts3 = 1 ]]; then
    echo -e "%F{#FF0000}🔝%f%K{#121212}push%k%f"
  fi
}

  echo -e $(GitDir) $(Modify) $(Commit) $(Push)

}


