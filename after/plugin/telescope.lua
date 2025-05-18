local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', function()
  builtin.find_files({
    file_ignore_patterns = {"node_modules/*", "*/node_modules/*"}  -- Ignora qualquer node_modules em qualquer nível
  })
end, { desc = 'Telescope find files' })

vim.keymap.set('n', '<C-p>', function()
  builtin.git_files({
    file_ignore_patterns = {"node_modules/*", "*/node_modules/*"}  -- Ignora qualquer node_modules em qualquer nível
  })
end, { desc = 'Telescope find files' })

vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({
    search = vim.fn.input("Grep > "),
    file_ignore_patterns = {"node_modules/*", "*/node_modules/*"}  -- Ignora qualquer node_modules em qualquer nível
  })
end)
