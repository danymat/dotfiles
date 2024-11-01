-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.font = wezterm.font 'JetBrains Mono'

local theme = require('lua/rose-pine').moon
config.colors = theme.colors()
config.window_frame = theme.window_frame()

-- and finally, return the configuration to wezterm
return config
