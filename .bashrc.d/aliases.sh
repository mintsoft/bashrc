#disable terminal beeps
setterm -blength 0

alias mutt='mutt -f imap://rob@localhost'
alias xmltidy='xmllint --format -'

#256 colour tmux!
alias tmux='tmux -2'

#make mv safer
alias mv='mv -n'

#make my aliases work through sudo
alias sudo='sudo '

#Disable bloody XON and XOFF
stty -ixon
