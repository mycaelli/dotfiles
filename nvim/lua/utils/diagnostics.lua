-- Configuração dos diagnósticos padrão do Neovim 
-- TODO: colocar signs
vim.diagnostic.config({
	update_in_insert = false,
	signs = true,
	underline = true,
	severity_sort = true,
	virtual_text = {
		spacing = 4,
		prefix = "●",
	},
	flot = {
		scope = "line",
		focusable = false,
		severity_sort = true,
		source = "always",
		border = "rounded",
		header = "",
		prefix = "",
	},
})
