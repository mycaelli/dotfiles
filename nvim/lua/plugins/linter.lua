-- nvim-lint --

-- return {
-- 	'mfussenegger/nvim-lint',
-- 	event = { 'BufRead', 'InsertEnter' },
-- 	config = function()
-- 		require('lint').linters_by_ft = {
-- 			python = { 'flake8' },
--       javascript = { "eslint" }, -- Para JavaScript
--       dockerfile = { "hadolint" }, -- Para Dockerfile
--       yaml = { "docker-compose-validator" }, -- Para docker-compose
--       go = { "golangci-lint" }, -- Para Go
--       lua = { "luacheck" }, -- Para Lua
--       markdown = { "markdownlint" }, -- Para Markdown
--       sh = { "shellcheck" }, -- Para Bash
--       json = { "jsonlint" }, -- Para JSON
-- 		}
-- 	end,
-- }

return {
  "williamboman/mason.nvim",
  dependencies = { "williamboman/mason-lspconfig.nvim" },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {
        python = { 'flake8' },
        javascript = { "eslint" }, -- Para JavaScript
        dockerfile = { "hadolint" }, -- Para Dockerfile
        yaml = { "docker-compose-validator" }, -- Para docker-compose
        go = { "golangci-lint" }, -- Para Go
        lua = { "luacheck" }, -- Para Lua
        markdown = { "markdownlint" }, -- Para Markdown
        sh = { "shellcheck" }, -- Para Bash
        json = { "jsonlint" }, -- Para JSON
      },
      automatic_installation = true,
    })
  end,
}

