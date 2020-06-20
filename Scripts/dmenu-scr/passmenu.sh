#!/usr/bin/env bash

shopt -s nullglob globstar

typeit=0
if [[ $1 == "--type" ]]; then
	typeit=1
	shift
fi

prefix=${PASSWORD_STORE_DIR-~/.password-store}
password_files=( "$prefix"/**/*.gpg )
password_files=( "${password_files[@]#"$prefix"/}" )
password_files=( "${password_files[@]%.gpg}" )

password=$(printf '%s\n' "${password_files[@]}" | dmenu -i -p "Pass  : " "$@" -sb "#34495E" -fn "JetBrainsMono Nerd Font")

[[ -n $password ]] || exit

if [[ $typeit -eq 0 ]]; then
	clipctl disable && pass show -c "$password" 2>/dev/null ; clipctl enable
else
	clipctl disable && pass show "$password" | { IFS= read -r pass; printf %s "$pass"; } | xdotool type --clearmodifiers --file -; clipctl enable
fi

