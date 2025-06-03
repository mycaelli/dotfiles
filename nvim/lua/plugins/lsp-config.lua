-- lsp-config.lua
return {
	{ "VonHeikemen/lsp-zero.nvim", branch = "v4.x" },
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	config = function()
		local lsp_zero = require("lsp-zero")

		local lsp_attach = function(client, bufnr)
			-- this is where you enable features that only work
			-- if there is a language server active in the file
		end
		-- lsp_zero.ui({
		-- 	float_border = "rounded",
		-- 	sign_text = {
		-- 		error = "✘",
		-- 		warn = "▲",
		-- 		hint = "⚑",
		-- 		info = "»",
		-- 	},
		-- })
		lsp_zero.extend_lspconfig({
			-- capabilities = require("cmp_nvim_lsp").default_capabilities(),
			sign_text = true,
			lsp_attach = lsp_attach,
		})
	end,
}
