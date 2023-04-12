local keymap = vim.keymap

vim.g.mapleader = " "

-- Do not yank with x
keymap.set('n', 'x', '"_x')
keymap.set('n', '<leader>w', '<cmd>:w<cr>')
keymap.set('n', '<leader>q', '<cmd>:q<cr>')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwords
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- Move window
keymap.set('n', '<leader><leader>', '<C-w>w')

keymap.set('n', 'sh', '<C-w>h')
keymap.set('n', 'sn', '<C-w>j')
keymap.set('n', 'se', '<C-w>k')
keymap.set('n', 'si', '<C-w>l')

keymap.set('n', '<A-n>', ':m .+1<CR>')
keymap.set('n', '<A-e>', ':m .-2<CR>')
keymap.set('i', '<A-n>', '<ESC>:m .+1<CR>==gi')
keymap.set('i', '<A-e>', '<ESC>:m .-2<CR>==gi')
keymap.set('v', '<A-n>', ":m '>+1<CR>gv=gv")
keymap.set('v', '<A-e>', ":m '<-2<CR>gv=gv")

-- Escape highlight search
keymap.set('n', '<ESC>', '<cmd>:noh<cr>', { noremap = true, silent = true })

keymap.set("n", "m", "nzzzv")
keymap.set("n", "M", "Nzzzv")

keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
keymap.set("c", "<C-e>", "<C-p>")
keymap.set("n", "<leader>e", vim.cmd.Ex)
