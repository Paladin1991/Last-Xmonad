#!/usr/bin/env bash

#=============
# System Tools
#=============
source ~/zsh/GitTools.sh
source ~/zsh/Ztools.sh
#======
# Vars
#======

User=" %n"
User1=" %n"
User2=" %n"
User3=" %n"
User4=" %n"

Distro_Wm(){

wmname=$(wmctrl -m | grep Name | sed 's/.*: //g')
distroname=$(uname -n | sed 's/linux//g;s/[-"_]//g')

if [[ $distroname = arch ]]; then
  echo -e "%F{#0c81ff} %f $distroname %F{#d12345}$wmname%f "
elif [[ $distroname = debian ]]; then
  echo -e "%F{#ff2f5c} %f $distroname %F{#d12345}$wmname%f "
elif [[ $distroname = ubuntu ]]; then
  echo -e "%F{#ff5d0c} %f $distroname %F{#d12345}$wmname%f "
elif [[ $distroname = fedora ]]; then
  echo -e "%F{#3a65ff} %f $distroname %F{#d12345}$wmname%f "
elif [[ $distroname = slackware ]]; then
  echo -e "%F{#3a65ff}  %f $distroname %F{#d12345}$wmname%f "
elif [[ $distroname = opensuse ]]; then
  echo -e "%F{#55ff7f}  %f $distroname %F{#d12345}$wmname%f "
elif [[ $distroname = manjaro ]]; then
  echo -e "%F{#008820}  %f $distroname %F{#d12345}$wmname%f "
elif [[ $distroname = gentoo ]]; then
  echo -e "%F{#693494}  %f $distroname %F{#d12345}$wmname%f "
elif [[ $distroname = mint ]]; then
  echo -e "%F{#55ff7f}  %f $distroname %F{#d12345}$wmname%f "
fi
}

Distro_Wm_Icon(){

distroname="arch" #$(uname -n | sed 's/linux//g;s/[-"_]//g')

if [[ $distroname = arch ]]; then
  echo -e "%F{#0c81ff}%f"
elif [[ $distroname = debian ]]; then
  echo -e "%F{#ff2f5c}%f"
elif [[ $distroname = ubuntu ]]; then
  echo -e "%F{#ff5d0c}%f"
elif [[ $distroname = fedora ]]; then
  echo -e "%F{#3a65ff}%f"
elif [[ $distroname = slackware ]]; then
  echo -e "%F{#3a65ff} %f"
elif [[ $distroname = opensuse ]]; then
  echo -e "%F{#55ff7f} %f"
elif [[ $distroname = manjaro ]]; then
  echo -e "%F{#008820} %f"
elif [[ $distroname = gentoo ]]; then
  echo -e "%F{#693494} %f"
elif [[ $distroname = gentoo ]]; then
  echo -e "%F{#55ff7f} %f"
fi
}


GetHome(){
  get_=$(pwd | sed 's/\///g;s/e.*//g')

  if [[ $get_ = hom ]]; then
    echo " Home %K{#121212}"
  else
    echo " Root %K{#121212}"
  fi
}



ERROR(){
  if [ "$?" -eq 0 ]
    then
    echo "%F{#00ff00}%f"
  else 
    echo "%F{#F00000}%f"
fi
}

#========
# Prompts
#========

function PPL1(){
  RPS1='$(PacNews_Cache_PPL1)'
  PS1='%K{#123456}%n%k%F{#123456}%f%F{#FF3F21}%T%f%F{#345678}%f%K{#345678}$(Distro_Wm)%k%F{#345678}%f$(GetHome)%k%F{#567890}%f%K{#567890} %~ %k%F{#567890}%f$(Git-Status_PPL1)
%F{#ff5566} %(!.#.$)%f ' 
}

function PPL2(){
  RPS1='$(GetHome)%k%~ $(Git-Status_PPL2)'
  PS1='%F{#aa007f}%f%F{#ff00bf} %n%f%F{#FF0000}@%f%F{#0c81ff}%m%f $(Distro_Wm_Icon)  %(!.#.$) '
}

function PPL3(){
  RPS1='$(PacNews_Cache_PPL3)'
  PS1='%F{#F00000}┌%f%F{#b5ff95}$User4%f$(Distro_Wm_Icon)$(Git-Status_PPL3)
%F{#F00000}└(%f%~%F{#F00000})%f %(!.$.#) '
}

function PPL4(){
  RPS1='$(PacNews_Cache_PPL4)'
  PS1='%K{#FFFFFF}%F{#232323}$User2%F{#F12345}@%F{#AE23FF}%m%f %k%F{#FFFFFF}%K{#121212} %f%~%k%F{#121212}%K{#FFFFFF} %k%f$(Git-Status_PPL4)
%(!.$.#) '  
}

function PPL5(){
  RPS1='$(PacNews_Cache_PPL5)'
  PS1='%F{#5555ff}╭%f%F{#5555ff}│%f%~%F{#5555ff}│%f%T%F{#5555ff}│%f$(Git-Status_PPL5)
%F{#5500ff}╰╴$(ERROR) %f%F{#5500ff}│%f$User4%F{#5500ff}│%f '
}

function PPL6(){
  PS1='%~ %F{#00d2ff}::%f ' 
}