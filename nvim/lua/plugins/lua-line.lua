-- personaliza rodapé

-- local function filepath()
--   return vim.fn.fnamemodify(vim.fn.expand('%'), ':p')
-- end

local function filename()
  return vim.fn.fnamemodify(vim.fn.expand('%'), ':~:.')
end

local function filepath()
  -- Obtém o diretório do projeto atual (onde você abriu o Neovim)
  local project_dir = vim.fn.getcwd()
  -- Obtém o caminho completo do arquivo atual
  local full_path = vim.fn.fnamemodify(vim.fn.expand('%'), ':p')
  -- Remove a parte do caminho que é o diretório do projeto (tornando o caminho relativo)
  return string.gsub(full_path, "^" .. vim.pesc(project_dir), "") -- Remove o prefixo do caminho
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
				theme = "tokyonight",
				component_separators = "",
				section_separators = "",
				disabled_filetypes = {}, -- Arquivos que não devem mostrar a linha de status
			},
      winbar = {
        lualine_c = { filepath },
      },
			sections = {
				lualine_a = { "mode" }, -- Exibe o modo de edição (normal, insert, etc.)
				lualine_b = { "branch", "diff" }, -- Mostra a branch do Git
				lualine_c = {},
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
			},
      extensions = {'fugitive'},
		})
	end,
}
