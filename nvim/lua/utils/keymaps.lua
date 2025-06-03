-- basic config

-- Copiar para o clipboard
vim.keymap.set('v', '<leader>y', '"+y')   -- copiar seleção
-- vim.keymap.set('n', '<leader>y', '"+yy')  -- copiar linha
-- Colar do clipboard
vim.keymap.set('n', '<leader>p', '"+p')   -- colar
-- vim.keymap.set('v', '<leader>p', '"+p')   -- colar substituindo seleção

-- move centralizado
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz') 


-- trouble
vim.api.nvim_set_keymap( "n", "<leader>d", "<cmd>Trouble diagnostics toggle<cr>", { silent = true, noremap = true, desc = "disgnósticos do trouble" }) -- abre o diagnostico
vim.api.nvim_set_keymap("n", "<leader>da", "<cmd>Trouble<cr>", { silent = true, noremap = true, desc = "mostra comandos do trouble"}) -- abre a janela do trouble

-- formatação -> formatting.lua
vim.api.nvim_set_keymap(
	"n",
	"<leader>f",
	":lua require('conform').format({ async = true, lsp_fallback = true })<CR>",
	{ noremap = true, silent = true, desc = "formata a página"}
)

-- git -> git.lua
vim.api.nvim_set_keymap("n", "<leader>gs", ":Git status<CR>", { noremap = true, silent = true, desc = "git status"}) -- git status
vim.api.nvim_set_keymap("n", "<leader>gd", ":Gdiffsplit<CR>", { noremap = true, silent = true, desc = "git diff"}) -- git diff
vim.api.nvim_set_keymap("n", "<leader>gb", ":Git blame<CR>", { noremap = true, silent = true, desc = "git blame"})  -- git blame

-- file browser -> file_browser.lua
vim.keymap.set("n", "<C-b>", ":lua require('mini.files').open()<CR>", { noremap = true, silent = true, desc = "abre visualização dos arquivos" })

-- lsp config
vim.keymap.set("n", "<leader>K", "<cmd>lua vim.lsp.buf.hover()<cr>", { desc = "hover de infos" })
vim.keymap.set("n", "<leader>D", "<cmd>lua vim.lsp.buf.definition()<cr>", { desc = "definição da função/var" })
vim.keymap.set("n", "<leader>I", "<cmd>lua vim.lsp.buf.implementation()<cr>", { desc = "implementação da função/var" })
vim.keymap.set("n", "<leader>S", "<cmd>lua vim.lsp.buf.signature_help()<cr>", { desc = "assinatura da função" })

-- -- snack
vim.keymap.set("n", "<C-f>", function() local snack = require("snacks") snack.picker.files() end, { desc = "Busca arquivos com Snack" })

-- TODO: word grep nao ta funfando
-- -- telescope
-- vim.keymap.set("n", "<C-f>", require("telescope.builtin").find_files, { desc = "busca arquivos" }) -- search for files --
vim.keymap.set("n", "<C-g>", require("telescope.builtin").live_grep, { desc = "grep de textos" }) -- search for text --
vim.keymap.set("n", "<C-s>", require("telescope.builtin").grep_string, { desc = "grep de textos" }) -- search for text --
vim.keymap.set("n", "<C-p>", require("telescope.builtin").oldfiles, { desc = "busca últimod arquivos abertos"}) -- search for text --

-- vim.keymap.set("n", "<C-g>f", require("telescope.builtin").lsp_document_symbols, { desc = "" })
-- vim.keymap.set("n", "<C-g>s", require("telescope.builtin").grep_string, { desc = "grep de strings"})

-- Debbug
local dap = require('dap')
local dapui = require('dapui')

vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint, { desc = 'Toggle Breakpoint' })
vim.keymap.set('n', '<leader>dB', function()
  dap.set_breakpoint(vim.fn.input('Breakpoint condition: '))
end, { desc = 'Set Conditional Breakpoint' })

vim.keymap.set('n', '<leader>dc', dap.continue, { desc = 'Start/Continue Session' })
vim.keymap.set('n', '<leader>di', dap.step_into, { desc = 'Step Into' })
vim.keymap.set('n', '<leader>do', dap.step_over, { desc = 'Step Over' })
vim.keymap.set('n', '<leader>du', dap.step_out, { desc = 'Step Out' })
vim.keymap.set('n', '<leader>dr', dap.restart, { desc = 'Restart Debug Session' })
vim.keymap.set('n', '<leader>ds', dap.terminate, { desc = 'Stop Debugger' })
vim.keymap.set('n', '<leader>dl', dap.run_last, { desc = 'Run Last Debug Session' })

vim.keymap.set('n', '<leader>dui', dapui.toggle, { desc = 'Toggle DAP UI' })
vim.keymap.set('n', '<leader>dv', dapui.eval, { desc = 'DAP Eval Expression' })

