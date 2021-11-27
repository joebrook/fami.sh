function battery () {
    fetch_bat=$(cat /sys/class/power_supply/BAT1/capacity)

    if [[ $fetch_bat -lt 10 ]]; then
        printf "\uf244\n"
    elif [[ $fetch_bat -lt 20 ]]; then
        printf "\uf243\n"
    elif [[ $fetch_bat -lt 50 ]]; then
        printf "\uf242\n"
    elif [[ $fetch_bat -lt 70 ]]; then
        printf "\uf241\n"
    elif [[ $fetch_bat -lt 100 ]]; then
        printf "\uf240\n"
    fi
}

battery
