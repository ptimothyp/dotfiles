-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'Gruvbox light'
-- config.color_scheme = 'Bespin (dark) (terminal.sexy)'
-- config.color_scheme = 'Birds Of Paradise (Gogh)'
config.color_scheme = 'BirdsOfParadise'
-- config.color_scheme = 'Batman'
config.color_scheme = 'Brewer (base16)'

config.font = wezterm.font("FiraCode Nerd Font Mono")

config.font_size = 16.0
-- and finally, return the configuration to wezterm
return config
