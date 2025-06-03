-- personaliza rodapé

local function filepath()
  return vim.fn.fnamemodify(vim.fn.expand('%'), ':~:.')
end

local function lsp_status()
	local clients = #vim.lsp.get_clients()
	local status = "LSP:" .. clients
	return clients > 0 and ("%#LualineLspActive#" .. status) or status
end

return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true, -- Habilita ícones
				theme = "sonokai",
				component_separators = "",
				section_separators = "",
				disabled_filetypes = {}, -- Arquivos que não devem mostrar a linha de status
			},
			sections = {
				lualine_a = { "mode" }, -- Exibe o modo de edição (normal, insert, etc.)
				lualine_b = { "branch", "diff" }, -- Mostra a branch do Git
				lualine_c = { filepath }, -- Exibe o nome do arquivo atual
				lualine_x = {
					{
						"diagnostics",
						sources = { "nvim_diagnostic" },
						sections = { "error", "warn" },
						always_visible = true,
					},
					lsp_status,
					{ "filetype" },
					{ "file_encoding" },
					{ "file_format" },
				},
				lualine_z = { "location" }, -- Mostra a localização (linha/coluna)
			},
      extensions = {'fugitive'},
			inactive_sections = { -- Configurações para janelas inativas
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
		})
	end,
}
