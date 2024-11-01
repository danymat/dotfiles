-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.font = wezterm.font 'JetBrains Mono'
local theme = require('lua/rose-pine').moon
config.colors = theme.colors()

config.window_frame = theme.window_frame()
config.native_macos_fullscreen_mode = true
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "INTEGRATED_BUTTONS"
config.window_padding = {
    left = 2,
    right = 2,
    top = 30,
    bottom = 0,
}

-- and finally, return the configuration to wezterm
return config
