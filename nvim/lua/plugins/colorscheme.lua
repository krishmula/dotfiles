-- return {
-- 	"folke/tokyonight.nvim",
-- 	priority = 1000,
-- 	config = function()
-- 		local transparent = true -- set to true if you would like to enable transparency
--
-- 		local bg = "#011628"
-- 		local bg_dark = "#011423"
-- 		local bg_highlight = "#143652"
-- 		local bg_search = "#0A64AC"
-- 		local bg_visual = "#275378"
-- 		local fg = "#CBE0F0"
-- 		local fg_dark = "#B4D0E9"
-- 		local fg_gutter = "#627E97"
-- 		local border = "#547998"
--
-- 		require("tokyonight").setup({
-- 			style = "night",
-- 			transparent = transparent,
-- 			styles = {
-- 				sidebars = transparent and "transparent" or "dark",
-- 				floats = transparent and "transparent" or "dark",
-- 			},
-- 			on_colors = function(colors)
-- 				colors.bg = bg
-- 				colors.bg_dark = transparent and colors.none or bg_dark
-- 				colors.bg_float = transparent and colors.none or bg_dark
-- 				colors.bg_highlight = bg_highlight
-- 				colors.bg_popup = bg_dark
-- 				colors.bg_search = bg_search
-- 				colors.bg_sidebar = transparent and colors.none or bg_dark
-- 				colors.bg_statusline = transparent and colors.none or bg_dark
-- 				colors.bg_visual = bg_visual
-- 				colors.border = border
-- 				colors.fg = fg
-- 				colors.fg_dark = fg_dark
-- 				colors.fg_float = fg
-- 				colors.fg_gutter = fg_gutter
-- 				colors.fg_sidebar = fg_dark
-- 			end,
-- 		})
--
-- 		vim.cmd("colorscheme tokyonight")
-- 	end,
-- }

--[[---------------------------------------]]
--
--       colorscheme - nord colorscheme      --
--               Author: elai                --
--              License: GPLv3               --
--[[---------------------------------------]]
--

-- Nord colorscheme options
vim.g.nord_contrast = true
vim.g.nord_disable_background = true
vim.g.nord_cursorline_transparent = false
vim.g.nord_borders = false
vim.g.nord_italic = false

-- Load nord colorscheme with A protected call
local colorscheme = "nord"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end
