-- telescope --

return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},

		-- easy word search
		config = function()
			require("telescope").setup({
				defaults = {
          truncate = true,
					theme = "dropdown",
					layout_strategy = "center",
					layout_config = {
						preview_cutoff = 1, -- Preview should always show
					},
					border = true,
					borderchars = {
						prompt = { "─", "│", " ", "│", "╭", "╮", "│", "│" },
						results = { "─", "│", "─", "│", "├", "┤", "╯", "╰" },
						preview = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
					},
					sorting_strategy = "ascending",
				},
				pickers = {
					find_files = {
						hidden = true, -- Habilita a busca de arquivos ocultos
					},
				},
			})
		end,
	},
}
