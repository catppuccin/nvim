if exists('g:loaded_catppuccin') | finish | endif
runtime lua/catppuccin/init.lua " Packer post-install hook
let g:loaded_catppuccin = 1
