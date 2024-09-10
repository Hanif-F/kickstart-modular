-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim: ts=2 sts=2 sw=2 et

-- 'jj' in insert mode to exit out of insert mode
vim.keymap.set('i', 'jj', '<Esc>', { desc = 'Exit out of insert mode' })

-- shortcut for Go's err not nil
vim.keymap.set('i', 'xx', 'if err != nil {<Enter>}<Esc>O', { desc = 'Go handle error' })

-- shortcut for HTML boiler plate
vim.keymap.set(
  'i',
  'x!',
  '<!DOCTYPE html><Enter><html lang="en"><Enter><Tab><head><Enter><Tab><Tab><meta charset="UTF-8"><Enter><Tab><Tab><meta name="viewport" content="width=device-width, initial-scale=1.0"><Enter><Tab><Tab><title></title><Enter><Tab></head><Enter><Tab><body><Enter><Tab></body><Enter></html><Esc>kO<Tab><Tab>',
  { desc = 'Insert HTML boiler plate' }
)

-- Open explorer
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Open explorer' })

vim.keymap.set('n', '<leader>tt', '<cmd>Trouble diagnostics toggle<cr>', { desc = 'Toggle Trouble list' })
vim.keymap.set('n', '<leader>tr', vim.cmd.TroubleRefresh, { desc = 'Refresh Trouble list' })

-- Toggle folds under cursor
vim.keymap.set('n', 'ff', 'za', { desc = 'Toggle folds under cursor' })
vim.keymap.set('n', 'fa', 'zA', { desc = 'Toggle all folds under cursor' })
