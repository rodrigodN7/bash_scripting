#!/usr/bin/env bash

userId=$(id -u)
[[ $userId -eq 0 ]] && echo "You are root" || echo "You are not root"

[[ $(id -u) -eq 0 ]] && echo "You are root" || echo "You are root"

if [[ $(id -u) -eq 0 ]]
then
	echo "You are root"
else
	echo "You are not root"
fi

sudo -v 1>/dev/null 2>/dev/null && echo "The user $(id -un) is having sudo privileges" || echo "the user $(id -un) is not having sudo privileges on this host $(host)"
