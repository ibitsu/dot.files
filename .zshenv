### .zshenv

umask 022

# Path Setting
path=($HOME/bin \
			/Applications/Emacs24.app/Contents/MacOS \
			/Developer/android-sdk-macosx/tools \
			/usr/local/bin /usr/bin /bin /usr/sbin /sbin \
			/Developer/usr/bin)

export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

export HTTP_HOME="http://www.google.co.jp/"
export PAGER="lv -Ae"
export EDITOR="vim"
export SVN_EDITOR="vim"
