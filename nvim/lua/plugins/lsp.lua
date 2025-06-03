-- lsp
return {
	"williamboman/mason.nvim",
	-- TODO: checar sintaxe
	dependencies = { "neovim/nvim-lspconfig" },
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
		config = function()
			require("mason").setup({})
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"docker_compose_language_service",
					"gopls",
					"markdown_oxide",
					"gitlab_ci_ls",
					"bashls",
					"dockerls",
					"ts_ls",
					"jsonls",
					"texlab",
          "pyright",
          "terraformls"
				},
				handlers = {
					function(server_name)
						require("lspconfig")[server_name].setup({
							capabilities = require("cmp_nvim_lsp").default_capabilities(),
						})
					end,
					-- gopls = {
					--
					-- }
				},
			})
		end,
	},
}
