return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		require("rose-pine").setup({
			disable_background = true,
			styles = {
				-- transparency = true,
				italic = false,
			},
		})
		vim.cmd("colorscheme rose-pine")
	end,
}
