#  _               _
# | |__   __ _ ___| |__
# | '_ \ / _` / __| '_ \
# | |_) | (_| \__ \ | | |
# |_.__/ \__,_|___/_| |_|

# User specific aliases and functions
export P4CONFIG=.p4env
export PATH=/usr/local/bin/p4v.2012:$PATH


#Search h files
find_h() { find . -type f -name \*.h -not -path "./packages/*" -exec grep -I $1 {} \; -print; }
#Search c files
find_c() { find . -type f -name \*.c -not -path "./packages/*" -exec grep -I $1 {} \; -print; }
#Search cpp files
find_cpp() { find . -type f -name \*.cpp -not -path "./packages/*" -exec grep -I $1 {} \; -print; }
#Search fdf files
find_fdf() { find . -type f -name \*.fdf -not -path "./packages/*" -exec grep -I $1 {} \; -print; }
#Search stb files
find_stb() { find . -type f -name \*.stb -not -path "./packages/*" -exec grep -I $1 {} \; -print; }
#Search meta files
find_meta() { find . -type f -name \*.meta -not -path "./packages/*" -exec grep -I $1 {} \; -print; }
find_make() { find . -type f -name \*akefile -not -path "./packages/*" -exec grep -I $1 {} \; -print; }
find_cmake() { find . -type f -name \CMakeLists.txt -not -path "./packages/*" -exec grep -I $1 {} \; -print; }
#Search txt files
find_text() { find . -type f -name \*.txt -not -path "./packages/*" -exec grep -I $1 {} \; -print; }
#Search for any file with a certain name
find_any() { find . -type f -name \* -not -path "./packages/*" -exec grep -I $1 {} \; -print; }
find_file() { find . -type f -name $1 -not -path "./packages/*" -print; }
#Search for xml file
find_xml() { find . -type f -name \*.xml -not -path "./packages/*" -exec grep -I $1 {} \; -print; }
find_type() { find . -type f -name $2 -not -path "./packages/*" -type $1 -print; }
find_d() { find . -type f -name $1 -type d -not -path "./packages/*" -print; }
find_dir() { find . -type f -name $1 -type d -not -path "./packages/*" -print; }
#Search for a lua file
find_lua() { find . -type f -name \*.lua -not -path "./packages/*" -exec grep -I $1 {} \; -print; }
#Searches for a cpp file and displays only the name not context
find_cpp_quiet() { find . -type f -name \*.cpp -not -path "./packages/*" -exec grep -q -I $1 {} \; -print; }
#ls after a cd
function cd {
   builtin cd "$@" && ls
}

#Asthetics
COLOR1="\[\033[0;36m\]"
COLOR2="\[\033[0;92m\]"
COLOR3="\[\033[0;36m\]"
COLOR4="\[\033[1;37m\]"
COLOR5="\[\033[0;30m\]"

PS1="$COLOR2($COLOR3\u@\h$COLOR2)-($COLOR1\w$COLOR2)$COLOR1\n$COLOR1$ $COLOR2)"
#LS_COLORS="$LS_COLORS:di=00;33"

-($COLOR1\@$COLOR2 $COLOR1\d$COLOR2)  not neccesary right now since time is different

if [ "$UID" = "0" ];
then
# I am root
COLOR2="\[\033[0;31m\]"
fi

export PS1

#emacs makes new file in emacs
alias emacs='emacs -nw'
#make new file and opens in emacs
alias e='emacs -nw'
alias eclipse='/usr/local/eclipse/eclipse &'
#clears screen
alias cls='clear'
#confirmation on remove with just rm
alias rm='rm -i'
#confirmation on copy with just cp
alias cp='cp -i'
#confirmation of mv with just mv
alias mv='mv -i'
alias mi='make -j5 install'
alias mc='make -j5 clean'
alias mm='make -j5 move'
alias modshellscripts='find . -type f -name "*.sh" -exec chmod 555 {} \;'
alias find_Any='find_any'
#Typos
alias dc='cd';
