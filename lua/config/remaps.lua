vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Allows for easy access to netrw, although telescope is typically better
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- For splitting windows without the <C-W> which i find awkward on mac
-- This is definitely my worst remap
vim.keymap.set("n", "<leader>wh", "<C-W>h", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>wj", "<C-W>j", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>wk", "<C-W>k", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>wh", "<C-W>h", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>ws", "<C-W>s", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>wv", "<C-W>v", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>wo", "<C-W>o", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>wq", "<C-W>q", { noremap = true, silent = true })

-- Same deal for tabs
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tq", ":tabclose<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>th", "gT", { noremap = true, silent = true})
vim.keymap.set("n", "<leader>tl", "gt", { noremap = true, silent = true})

-- For VimTex and Zathura
-- Workaround for issues with iTerm, VimTex, and Zathura WindowID
vim.keymap.set("n", "<leader>z", ":!zathura <C-r>=expand('%:r')<cr>.pdf &<cr>")

-- For telescope.lua
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
