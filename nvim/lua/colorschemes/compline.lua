return {
	"jblais493/compline",
	rtp = "nvim",
	priority = 1000,
	lazy = false,
	config = function()
		vim.cmd.colorscheme("compline")
	end,
}
