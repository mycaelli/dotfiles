-- integrates lsp with external formatters -> none-ls --

return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			-- Define your formatters
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				go = { "goimports" },
				["*"] = { "trim_whitespace" },
				yaml = { "yamlfix" },
			},
			formatters = {
				goimports = {
					command = "goimports",
					args = { "-w", "$FILENAME" },
					stdin = false, -- goimports não usa stdin
				},
			},
		})
	end,
}
