return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")
		-- import mason_lspconfig
		local mason_lspconfig = require("mason-lspconfig")
		-- adding ui components
		mason.setup({
			ui = {
				icons = {
					packages_installed = "✓",
					packages_pending = "→",
					packages_uninstalled = "✗"
				}
			}
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				-- "asm_lsp",
				"bashls",
				"clangd",
				-- "neocmake",
				"cssls",
				"tailwindcss",
				"dockerls",
				"html",
				-- This one didn't work, will figure out later
				-- "java_language_server",
				"eslint",
				"texlab",
				"lua_ls",
				"pyright",
			},
			-- auto-install configured servers (with lspconfig)
			automatic_installation = true,
		})
	end
}
