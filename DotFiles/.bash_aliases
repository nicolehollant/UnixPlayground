#!/bin/bash
# alias.sh

shopt -s expand_aliases


#goes to relevant dir
alias beans='cd ~/gitstuff/PointersSuck/pintos/src/userprog'
alias pointers='cd ~/gitstuff/PointersSuck'

#launches chrome lol
launchChrome(){
	google-chrome &>/dev/null &
	clear
}

alias chrome=launchChrome

#push changes to rep
gitpush(){
	git add *
	git commit -m "$*"
	git push
}
alias gitsend=gitpush

#window management shit:
alias termleft='gnome-terminal --geometry 92x51+12+40'

alias termright='gnome-terminal --geometry 92x51-12+40'

makeTwo(){
	wmctrl -r :ACTIVE: -N TempTerm
	termright
	termleft
	wmctrl -c TempTerm
}
alias maketwo=makeTwo

makeTwoUnicode(){
	wmctrl -r :ACTIVE: -N TempTerm
	urxvt -g 92x51+12+41 -title Left &
	urxvt -g 92x51+970+41 -title Right &
	wmctrl -c TempTerm
}

launchTwoUnicode(){
	urxvt -g 92x51+12+41 -title Left &
	urxvt -g 92x51+970+41 -title Right &
}

repositionUnicode(){
	wmctrl -e 0,20,40,932,1000 -r Left
	wmctrl -e 0,970,40,932,1000 -r Right
}

set-title(){
  ORIG=$PS1
  TITLE="\e]2;$@\a"
  PS1=${ORIG}${TITLE}
}

alias helpMe='less ~/.myBash/LinuxDooDads'




alias showFox='feh --geometry 595x360+1300+49 ~/Pictures/TwentyEXXEXX.png'
makeRice(){
	wmctrl -r :ACTIVE: -N main
	wmctrl -e 0,30,50,800,430 -r main
	showFox &
	clear
	urxvt -g 78x26+30+524 -title SysInfo -e sh -c "neofetch; bash" &
	urxvt -g 102x29+852+467 -title Pipes -e sh -c ".pipes/pipes.sh/pipes.sh; bash" &
	urxvt -g 40x18+852+48 -title G-Unix -e sh -c ".Scripts/printGUnix; bash" &
	#gnome-terminal --geometry 101x28-238-100 -- ".pipes/pipes.sh/pipes.sh"
	#gnome-terminal --geometry 40x17-238+56 -- ".Scripts/printGUnix"
	clear

}

#change urxvt profiles
prof(){
	~/.Scripts/urxvtProfiles $1
}
background(){
	~/.Scripts/changeBackground $1 $2
}



#G-Unix: play some great clips!
#help
alias gunix='cat ~/.myBash/GUnix'
#clips
alias dog='mpg123 -q ~/Music/MyMansAndThem.mp3'
alias dog2='mpg123 -q ~/Music/MyMansAndThem2.mp3'
alias youknow='mpg123 -q ~/Music/SoYouKnowWhen.mp3'
alias ohah='mpg123 -q ~/Music/OofAhNo.mp3'
alias dontcompareme='mpg123 -q ~/Music/DontCompareMe.mp3'
alias dontknowwhat='mpg123 -q ~/Music/DontKnowWhat.mp3'
alias elaborate='mpg123 -q ~/Music/Elaborate.mp3'
alias hecantsaveyou='mpg123 -q ~/Music/HeCantSaveYou.mp3'
alias warhol='mpg123 -q ~/Music/IAmWarhol.mp3'
alias laydown='mpg123 -q ~/Music/LayYourAssDown.mp3'
alias medicci='mpg123 -q ~/Music/MedicciFamily.mp3'
alias impactful='mpg123 -q ~/Music/MostImpactful.mp3'
alias youngbuck='mpg123 -q ~/Music/MyNameYoungBuck.mp3'
alias nothingtoprove='mpg123 -q ~/Music/NothingToProve.mp3'
alias theanswers='mpg123 -q ~/Music/TheAnswers.mp3'
alias tripledouble='mpg123 -q ~/Music/TripleDouble.mp3'
alias waltnikegoogle='mpg123 -q ~/Music/WaltNikeGoogle.mp3'
alias numberone='mpg123 -q ~/Music/WeNumberOne.mp3'
alias drinkin='mpg123 -q ~/Music/YouveBeenDrinkin.mp3'
alias toddlers='mpg123 -q ~/Music/Toddlers.mp3'
