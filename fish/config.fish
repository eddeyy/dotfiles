## get rid of command not found ##
alias cd..="cd .."
 
## a quick way to get out of current directory ##
alias ..="cd .."
alias ...="cd ../../../"
alias ....="cd ../../../../"
alias .4="cd ../../../../"
alias .5="cd ../../../../.."

alias h="history"

alias ports="netstat -tulanp"
## shortcut  for iptables and pass it via sudo#
alias ipt="sudo /sbin/iptables"
 
# display all rules #
alias iptlist="sudo /sbin/iptables -L -n -v --line-numbers"
alias iptlistin="sudo /sbin/iptables -L INPUT -n -v --line-numbers"
alias iptlistout="sudo /sbin/iptables -L OUTPUT -n -v --line-numbers"
alias iptlistfw="sudo /sbin/iptables -L FORWARD -n -v --line-numbers"
alias firewall=iptlist

# confirmation before overwrite#
alias mv="mv -i"
alias cp="cp -i"
alias ln="ln -i"

alias update="sudo apt-get update; and sudo apt-get upgrade"

## Antlr4
alias antlr4='java -Xmx500M -cp "/usr/local/lib/antlr-4.7.1-complete.jar:$CLASSPATH" org.antlr.v4.Tool'
alias grun='java org.antlr.v4.gui.TestRig'


# Turn off Vi-Indicator
function fish_mode_prompt
end
