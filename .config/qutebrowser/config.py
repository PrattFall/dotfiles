import subprocess

def read_xresources(prefix):
    props = {}
    x = subprocess.run(['xrdb', '-query'], stdout=subprocess.PIPE)
    lines = x.stdout.decode().split('\n')
    for line in filter(lambda l: l.startswith(prefix), lines):
        prop, _, value = line.partition(':\t')
        props[prop] = value.replace("*fading: 8", "")
    return props

xresources = read_xresources('*')

# Defaults
c.url.start_pages = ["https://www.google.com"]
c.tabs.background = True

# Bindings
config.bind(',v', 'hint links spawn mpv {hint-url}')

config.load_autoconfig()

# Theme
c.tabs.position = "top"
c.colors.completion.category.border.bottom = xresources['*background']
c.colors.completion.category.border.top = xresources['*background']
c.colors.completion.even.bg = xresources['*background']
c.colors.completion.odd.bg = xresources['*background']
c.colors.completion.item.selected.bg = xresources['*background']
c.colors.completion.item.selected.border.bottom = xresources['*background']
c.colors.completion.item.selected.border.top = xresources['*background']
c.colors.completion.item.selected.fg = xresources['*color6']
c.colors.completion.match.fg = xresources['*color10']
c.colors.completion.scrollbar.bg = xresources['*background']
c.colors.completion.category.bg = xresources['*color0']
c.colors.completion.category.fg = xresources['*color5']
c.colors.statusbar.command.bg = xresources['*background']
c.colors.statusbar.command.fg = xresources['*color6']
c.colors.statusbar.normal.bg = xresources['*background']
c.colors.tabs.bar.bg = xresources['*background']
c.colors.tabs.even.bg = xresources['*background']
c.colors.tabs.odd.bg = xresources['*background']
c.colors.tabs.selected.even.bg = xresources['*background']
c.colors.tabs.selected.even.fg = xresources['*color6']
c.colors.tabs.selected.odd.bg = xresources['*background']
c.colors.tabs.selected.odd.fg = xresources['*color6']
c.fonts.completion.category = "10pt monospace"
