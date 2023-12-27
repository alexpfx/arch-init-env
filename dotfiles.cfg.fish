#!/bin/fish

git config --global color.ui always
go install github.com/alexpfx/gosh/dotfile/cmd/repo@latest
go install github.com/alexpfx/gosh/dotfile/cmd/cfg@latest
fish_add_path $HOME/go/bin
repo init --help
cfg --help
