# Copy file with a progress bar
cpp() {

    strace -q -ewrite cp -- "${1}" "${2}" 2>&1 |
    awk '{
        count += $NF
        if (count % 10 == 0) {
            percent = count / total_size * 100
            printf "%3d%% [", percent
            for (i=0;i<=percent;i++)
                printf "="
            printf ">"
            for (i=percent;i<100;i++)
                printf " "
            printf "]\r"
        }
    }
    END { print "" }' total_size="$(stat -c '%s' "${1}")" count=0
}

# Copy and go to the directory
cpg() {
	if [ -d "$2" ]; then
		cp "$1" "$2" && cd "$2"
	else
		cp "$1" "$2"
	fi
}

# Move and go to the directory
mvg() {
	if [ -d "$2" ]; then
		mv "$1" "$2" && cd "$2"
	else
		mv "$1" "$2"
	fi
}

# Create and go to the directory
mkdirg() {
	mkdir -p "$1"
	cd "$1"
}

# Goes up a specified number of directories  (i.e. up 4)
up() {
	local d=""
	limit=$1
	for ((i = 1; i <= limit; i++)); do
		d=$d/..
	done
	d=$(echo $d | sed 's/^\///')
	if [ -z "$d" ]; then
		d=..
	fi
	cd $d
}

# Automatically do an ls after each cd, z, or zoxide
cd ()
{
	if [ -n "$1" ]; then
		builtin cd "$@" && ls
	else
		builtin cd ~ && ls
	fi
}

# reboot into windows
win()
{
	RED='\033[0;31m'		
	NC='\033[0m' # No Color

	if [ "$1" = "c" ]
	then
		sudo efibootmgr -n 0001
		
		printf "\n${RED}Windows boot canceled${NC}"
	else
		sudo efibootmgr -n 0000
		
		case $XDG_CURRENT_DESKTOP in
			KDE)
				qdbus6 org.kde.LogoutPrompt /LogoutPrompt promptReboot
				;;

			*)
				printf "\n${RED}Rebooting in 10 seconds.\npress ${NC}ctrl+c${RED} to cancel${NC}"
				
				( sleep 10 ; reboot )
				;;
		esac
	fi
}
