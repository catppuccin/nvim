# Alacritty Themes

Making your Alacritty terminal emulator colors match your Catppucino colors is
easy! Simply copy the values from the respective `.yml` file in this directory
and paste it over the `colors` configuration in your `alacritty.yml` file.

## `tmux` Users

If you use `tmux` inside of Alacritty you may notice that your terminal colors
don't match your Catppucino colors. The solution is two-fold. First, make sure
you have the following set in `alacritty.yml`:

```yml
env:
  TERM: xterm-256color
```

Second, make sure you have the following in your `tmux.conf`:

```
set -g default-terminal "xterm-256color"
set-option -ga terminal-overrides ",xterm-256color:Tc"
```

Now you should be all set!

See https://github.com/Pocco81/Catppuccino.nvim/pull/9 for more info.
