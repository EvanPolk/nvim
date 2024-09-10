return { 
	"rose-pine/neovim", 
	name = "rose-pine",
	opts = {
		variant = "moon"
	},
	config = function()
		-- load the colorscheme here
		vim.cmd("colorscheme rose-pine")
	end,
}
