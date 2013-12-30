#
#
#

#function setface() {
#	if [[ $? == 0 ]]; then face="$BGreen:) " else face="$BRed:( "; fi
#}

#PS1="`if [[ \$? == 0 ]]; then echo "$BGreen:) "; else echo "$BRed:( "; fi;` $BBlack\t $BBlue\w"$Color_Off'$(git branch &>/dev/null;\
PS1="$BBlack\t $BBlue\w"$Color_Off'$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then \
	echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
	if [ "$?" -eq "0" ]; then \
		# @4 - Clean repository - nothing to commit
		echo "'$Green'"$(__git_ps1 " (%s)"); \
	else \
		# @5 - Changes to working tree
		echo "'$IRed'"$(__git_ps1 " {%s}"); \
	fi)"; \
fi)'"\n`if [[ ${EUID} == 0 ]]; then echo "$BRed\h"; else echo "$Green\u$BGreen@$Green\h"; fi` $BBlue\$ $Colour_Off";

#
:<<ENDCOMMENT
export APS1=$IBlack$Time12h$Color_Off'$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then \
  echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
  if [ "$?" -eq "0" ]; then \
    # @4 - Clean repository - nothing to commit
    echo "'$Green'"$(__git_ps1 " (%s)"); \
  else \
    # @5 - Changes to working tree
    echo "'$IRed'"$(__git_ps1 " {%s}"); \
  fi) '$BYellow$PathShort$Color_Off'\$ "; \
else \
  # @2 - Prompt when not in GIT repo
  echo " '$Yellow$PathShort$Color_Off'\$ "; \
fi)'
ENDCOMMENT