##Include my per user bin
[[ -d ~/bin ]] && PATH=${PATH}:~/bin

#[[ -z "$STY" ]] && exec screen -ARR
#switch to tmux instead of screen
if [ $TERM != "screen-256color" ] && [ $TERM != "screen" ] && [ $TERM != "xterm" ]; then
	tmux attach || tmux new; exit
fi

export GIT_SSH=/home/rob/gitScript/sshKey.sh

~/bin/checkdowns

export PERL_LOCAL_LIB_ROOT="/home/rob/perl5";
export PERL_MB_OPT="--install_base /home/rob/perl5";
export PERL_MM_OPT="INSTALL_BASE=/home/rob/perl5";
export PERL5LIB="/home/rob/perl5/lib/perl5/i486-linux-gnu-thread-multi:/home/rob/perl5/lib/perl5";
export PATH="/home/rob/perl5/bin:$PATH";

export TIME_STYLE=long-iso

export TERM=xterm-256color