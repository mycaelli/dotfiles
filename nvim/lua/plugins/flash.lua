-- word search

return {
	"folke/flash.nvim",
	keys = {
		{
			"<C-k>",
			mode = { "i", "n", "x", "o" },
			function()
				require("flash").jump({
					label = { min_pattern_length = 2 },
				})
			end,
			desc = "Flash",
		},
		{
			"<C-l>",
			function()
				require("flash").jump({
					search = { mode = "search", max_length = 0 },
					label = { after = { 0, 0 } },
					pattern = "^",
					action = function(match, state)
						local is_operator = vim.fn.mode(true):find("no")
						require("flash.jump").jump(match, state)
						if is_operator then
							vim.cmd.normal("V")
						end
					end,
				})
			end,
			mode = { "n", "x", "o" },
			desc = "Flash (Jump to line)",
		},
	},
}
