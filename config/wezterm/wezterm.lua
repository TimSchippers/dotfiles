-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- appearance config
config.color_scheme = "Gruvbox Material (Gogh)"

config.font = wezterm.font("mononoki")

config.window_decorations = "RESIZE"
config.window_padding = {
	left = 2,
	right = 2,
	top = 2,
	bottom = 0,
}
config.hide_tab_bar_if_only_one_tab = true

config.audible_bell = "Disabled"

-- disable making tabs because i always use tmux
config.keys = {
	{
		key = "t",
		mods = "CMD",
		action = wezterm.action.DisableDefaultAssignment,
	},
}

-- and finally, return the configuration to wezterm
return config
