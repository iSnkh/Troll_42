# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    zsht.sh                                          .::    .:/ .      .::    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: amonteli <marvin@le-101.fr>                +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2019/07/20 20:33:29 by amonteli     #+#   ##    ##    #+#        #
#    Updated: 2019/07/23 11:51:55 by amonteli    ###    #+. /#+    ###.fr      #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #

function header()
{
	clear
	printf "\033[36m"
	printf "  ______           ____         __                                 \n"
	printf " /_  __/________  / / /__  ____/ /  _________  ____________  __    \n"
	printf "  / / / ___/ __ \/ / / _ \/ __  /  / ___/ __ \/ ___/ ___/ / / /    \n"
	printf " / / / /  / /_/ / / /  __/ /_/ /  (__  ) /_/ / /  / /  / /_/ / _ _ \n"
	printf "/_/ /_/   \____/_/_/\___/\__,_/  /____/\____/_/  /_/   \__, (_|_|_)\n"
	printf "                                                      /____/       \n\n"
	printf "install with: curl -fsSL s.snkh.me | bash \n"
	printf "(c) ripZeide, iSnkh.  found us on github. (Troll_42)\n"
}

header
open /System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app

for ((i=1;i<=7;i++)); 
do
	(SwitchAudioSource -s "Built-in Output" &)
	(osascript -e "set volume output volume 100" &)
	afplay --volume 42 ~/.troll.mp3
done

printf "You're so slow...\n" 
