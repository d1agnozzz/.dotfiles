# . "$HOME/.cargo/env"
# export MOZ_ENABLE_WAYLAND=1
#

path+=('/usr/local/texlive/2024/bin/x86_64-linux')
path+=("$HOME/.cargo/bin")
path+="$HOME/.local/bin"
export path

export MANPATH="$(manpath -g):/usr/local/texlive/2024/texmf-dist/doc/man"
export INFOPATH=/usr/local/texlive/2024/texmf-dist/doc/info:$INFOPATH

export RIPGREP_CONFIG_PATH="$HOME/.config/ripgrep.conf"
export SUDO_EDITOR=nvim
export RCLONE_PROGRESS=true
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    export MOZ_ENABLE_WAYLAND=1
fi

export XLA_FLAGS=--xla_gpu_cuda_data_dir=/opt/cuda
