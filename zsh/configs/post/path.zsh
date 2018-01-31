# ensure dotfiles bin directory is loaded first
PATH="$HOME/.bin:/usr/local/sbin:$PATH"

export SILENCE_RBENV_DEPRECATION=1

# load ASDF, falling back to rbenv if not available
if [ -d "$HOME/.asdf" ]; then
  . $HOME/.asdf/asdf.sh
fi

# mkdir .git/safe in the root of repositories you trust
PATH=".git/safe/../../bin:$PATH"

export -U PATH
