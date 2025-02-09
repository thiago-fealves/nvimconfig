-- Importar o plugin toggleterm
local status, toggleterm = pcall(require, "toggleterm")
if not status then
  vim.notify("Plugin toggleterm.nvim não encontrado!")
  return
end

-- Configuração do toggleterm
toggleterm.setup({
  -- Tamanho do terminal (pode ser um número ou uma função que retorna um número)
  size = 20,

  -- Abrir o terminal em uma aba em vez de uma janela flutuante
  open_mapping = [[<c-t>]],

  -- Direção do terminal (horizontal, vertical, float, tab)
  direction = "float", -- Pode ser "vertical", "float" ou "tab"

  -- Fechar o terminal quando sair do modo de inserção
  autochdir = false, -- Muda o diretório de trabalho do terminal para o diretório atual do Neovim

  -- Esconder números de linha no terminal
  hide_numbers = true,

  -- Esconder o cursor no terminal
  shade_terminals = true,

  -- Iniciar no modo de inserção
  start_in_insert = true,

  -- Persistir o tamanho do terminal
  persist_size = true,

  -- Fechar o terminal ao sair do Neovim
  close_on_exit = true,

  -- Configurações específicas para o terminal flutuante
  float_opts = {
    border = "single", -- Borda do terminal flutuante (pode ser "single", "double", "shadow", "curved", etc.)
    width = 100, -- Largura do terminal flutuante
    height = 20, -- Altura do terminal flutuante
    winblend = 0, -- Transparência da janela flutuante
    highlights = {
      border = "none", -- Cor da borda
      background = "Normal", -- Cor do fundo
    },
  },
})

-- Atalhos personalizados para trabalhar com o toggleterm
local opts = { noremap = true, silent = true }

-- Abrir/fechar o terminal principal
vim.api.nvim_set_keymap("n", "<leader>tt", "<cmd>ToggleTerm<cr>", opts)

-- Abrir um terminal flutuante
vim.api.nvim_set_keymap("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", opts)

-- Abrir um terminal na vertical
vim.api.nvim_set_keymap("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", opts)

-- Abrir um terminal na horizontal
vim.api.nvim_set_keymap("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", opts)

-- Abrir um terminal em uma nova aba
vim.api.nvim_set_keymap("n", "<leader>ta", "<cmd>ToggleTerm direction=tab<cr>", opts)

-- Enviar comandos para o terminal a partir do modo visual
vim.api.nvim_set_keymap("x", "<leader>ts", ":ToggleTermSendVisualSelection<cr>", opts)
vim.api.nvim_set_keymap("x", "<leader>tl", ":ToggleTermSendVisualLines<cr>", opts)

vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
