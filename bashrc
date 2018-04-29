#  _               _
# | |__   __ _ ___| |__
# | '_ \ / _` / __| '_ \
# | |_) | (_| \__ \ | | |
# |_.__/ \__,_|___/_| |_|

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#Change cd to ls after
function cd {
	builtin cd "$@" && ls
}
