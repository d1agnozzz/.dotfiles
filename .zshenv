# . "$HOME/.cargo/env"
# export MOZ_ENABLE_WAYLAND=1
export RIPGREP_CONFIG_PATH="$HOME/.config/ripgrep.conf"
export SUDO_EDITOR=nvim
export RCLONE_PROGRESS=true
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    export MOZ_ENABLE_WAYLAND=1
fi
