-- Pull in the wezterm API
local wezterm = require("wezterm")

wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
	window:gui_window():toggle_fullscreen()
end)
-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config.automatically_reload_config = true

config.enable_tab_bar = false

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
--config.font = wezterm.font 'MesloLGL Nerd Font Mono Regular'
config.font = wezterm.font("JetBrainsMono Nerd Font Mono")
config.font_size = 15.0
config.window_background_opacity = 0.35

config.keys = {
	{
		key = "n",
		mods = "SHIFT|CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
}
-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'
--config.color_scheme = 'OneDark (base16)'
-- and finally, return the configuration to wezterm
return config
