return {
    "nvim-treesitter/nvim-treesitter",
	opts = {
		highlight = { enable = true },
		indent = { enable = true },
		ensure_installed = {
			"bash",
      		"c",
      		"html",
      		"javascript",
      		"java",
			"jsdoc",
      		"json",
      		"lua",
      		"luadoc",
      		"luap",
      		"markdown",
      		"markdown_inline",
	  		"python",
      		"query",
      		"regex",
      		"toml",
      		"tsx",
      		"typescript",
      		"vim",
      		"vimdoc",
      		"xml",
      		"yaml",
		},
	},
	build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
}
