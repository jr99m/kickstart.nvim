local function run_python()
  local filename = vim.fn.expand '%'
  local keys = vim.api.nvim_replace_termcodes(':w<cr>:term<cr>ipython "' .. filename .. '"<cr>', true, true, true)
  vim.api.nvim_feedkeys(keys, 'n', false)
end

vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
vim.keymap.set('n', '<C-F5>', run_python, { desc = 'Python: run file' })
