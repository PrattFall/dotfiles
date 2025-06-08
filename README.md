# PrattFall's dotfiles

These are my personal dotfiles for when I inevitably switch linux distros every
six months or so.

## Configuration

It contains configuration files for:

### Actively Maintained

- [neovim](https://neovim.io): `.config/nvim`

### Likely Out of Date / Not Actively Maintained / Still Works :shrug:

- [mpv](https://mpv.io): `.config/mpv`
- [tmux](https://en.wikipedia.org/wiki/Tmux): `.tmux.conf`

## Scripts

I also have some scripts that I sometimes use

- `scripts/pixellock`: A wrapper around `i3lock` which displays a pixellated
version of the screen before it locked itself
- `scripts/colors`: An old ricer script to show terminal colors using space
invaders ships

## Notes

- ZSH stuff has been removed, and I don't have any `.bashrc` stuff since I've
entirely switched to using [fish shell](https://fishshell.com/)
- Emacs stuff has been removed since I haven't touched it in years
- All i3/x11 stuff (aside from `pixellock`) has been removed since I don't
reliably use either that often anymore

## TODO:

- Setup script?
- Eventually learn [Nix](https://nixos.org/)
- Fish config? (I don't really maintain it between machines at the moment)
- Neovim configuration cleanup
