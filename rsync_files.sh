#!/usr/bin/env bash

mkdir -p .config

rsync -av ~/.tmux.conf .
rsync -av ~/.config/nvim ./.config
