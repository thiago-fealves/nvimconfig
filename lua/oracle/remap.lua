vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set('n', '<leader>n', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>h', '<C-w>h', { noremap = true, silent = true }) -- Vai pra barra lateral
vim.keymap.set('n', '<leader>l', '<C-w>l', { noremap = true, silent = true }) -- Volta pro código

vim.keymap.set("n", '<leader>xf', function()
    require("lazy").load({ plugins = { "telescope.nvim" } })
    require("telescope.builtin").find_files({ cwd = vim.loop.cwd() }) -- Usa o diretório atual do Neovim
end, {})

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])


