return {
	"vague2k/vague.nvim",
	config = function()
		require("vague").setup({ transparent = false })
		vim.cmd("colorscheme vague")
		vim.cmd(":hi statusline guibg=NONE")
	end,
}
