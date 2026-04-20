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

config.keys = {
	-- Turn off the default CMD-m Hide action, allowing CMD-m to
	-- be potentially recognized and handled by the tab
	{ key = 'd', mods = 'SUPER',       action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" } },
	{ key = 'd', mods = 'SUPER|SHIFT', action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" } },
	{ key = 'l', mods = 'SUPER|SHIFT', action = wezterm.action.ActivatePaneDirection "Right" },
	{ key = 'h', mods = 'SUPER|SHIFT', action = wezterm.action.ActivatePaneDirection "Left" },
	{ key = 'k', mods = 'SUPER|SHIFT', action = wezterm.action.ActivatePaneDirection "Up" },
	{ key = 'j', mods = 'SUPER|SHIFT', action = wezterm.action.ActivatePaneDirection "Down" },
	{ key = 'w', mods = 'SUPER',       action = wezterm.action.CloseCurrentPane { confirm = true } },
}

-- and finally, return the configuration to wezterm
return config
