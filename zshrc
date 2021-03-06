# ================== #
#  Hauctopuce zshrc  #
# ================== #

ZSH_CONFIG_DIR="$HOME/etc/zsh"

# Load separated configuration files
for conf in "$ZSH_CONFIG_DIR"/*.zsh; do
	source ${conf}
done
unset conf
unset ZSH_CONFIG_DIR

# Start ssh-agent automatically or fetches an already running instance
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
	ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
	source "$XDG_RUNTIME_DIR/ssh-agent.env" > /dev/null
fi

ssh-add -l > /dev/null

if [ $? -eq 1 ]
then
	ssh-add "$HOME/.ssh/id_ed25519"
else
	echo "SSH Keys loaded"
fi
