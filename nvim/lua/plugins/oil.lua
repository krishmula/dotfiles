return {
	"stevearc/oil.nvim",
	opts = {
		view_options = {
			show_hidden = true,
		},
	},
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup({})
		vim.keymap.set({ "n", "x" }, "<leader>ee", function()
			require("oil").open()
		end, { silent = true })
	end,
}
