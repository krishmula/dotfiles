return {
	"mitch1000/backpack.nvim",
	config = function()
		require("backpack").setup()
		vim.cmd("colorscheme backpack")
	end,
}
