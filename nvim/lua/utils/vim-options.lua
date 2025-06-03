-- define leader key
vim.g.mapleader = " "

--clipboard
vim.opt.clipboard = "unnamedplus"  -- For Linux/X11/Wayland

-- numbered lines --
vim.o.number = true
vim.o.relativenumber = true

-- desativa o banner de inicializacao
vim.g.loaded_netrwPlugin = 1
vim.opt.swapfile = false
vim.g.loaded_netrw = 1

-- Define tabulação como espaços
vim.opt.tabstop = 2 -- Define a quantidade de colunas que uma tabulação ocupa
vim.opt.shiftwidth = 2 -- Define o número de espaços para cada nível de indentação
vim.opt.expandtab = true -- Converte tabs em espaços
vim.opt.softtabstop = 2 -- Faz com que <Tab> insira 2 espaços

-- define que o vim pode usar mais cores
vim.opt.termguicolors = true

-- define que o undo é "eterno"
vim.opt.undofile = true

-- case insenstivie
vim.o.ignorecase = true
