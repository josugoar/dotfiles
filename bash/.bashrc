if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

if [[ $(ps --no-header --pid "$PPID" --format comm) != "fish" && -z "$BASH_EXECUTION_STRING" ]]; then
  shopt -q login_shell && LOGIN_OPTION="--login" || LOGIN_OPTION=""
  exec fish $LOGIN_OPTION
fi
