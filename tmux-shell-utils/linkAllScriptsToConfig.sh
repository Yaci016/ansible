#!/bin/bash

function link_scripts_to_config() {
    local script_dir=$HOME/personal/ansible/tmux-shell-utils
    local config_dir=$HOME/.config

    for script in "$script_dir"/*; do
        # Skip if not a regular file
        [ ! -f "$script" ] && continue

        local script_name=$(basename "$script")
        ln -sf "$script" "$config_dir/$script_name"
    done
}

link_scripts_to_config
