local wezterm = require("wezterm")
return {
	enable_tab_bar = false,
	font_size = 12.0,
	font = wezterm.font("FiraCode Nerd Font", { weight = "Regular", stretch = "Normal", style = "Normal" }),
	window_background_opacity = 0.95,
	initial_cols = 160,
	initial_rows = 160,
	window_decorations = "RESIZE",
	enable_wayland = true,
	color_scheme = "Gruvbox Dark (Gogh)",
	keys = {
		{
			key = "'",
			mods = "CTRL",
			action = wezterm.action.ClearScrollback("ScrollbackAndViewport"),
		},
	},
	mouse_bindings = {
		-- Ctrl-click will open the link under the mouse cursor
		{
			event = { Up = { streak = 1, button = "Left" } },
			mods = "CTRL",
			action = wezterm.action.OpenLinkAtMouseCursor,
		},
	},
}
