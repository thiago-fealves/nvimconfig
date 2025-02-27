# 🚀 Neovim Dotfiles

Esta configuração do Neovim foi criada para otimizar o workflow e manter a simplicidade. Está em constante evolução para melhorar a produtividade sem comprometer a leveza do editor.

# 📥 Instalação

**Requisitos:**
- Neovim
- Git
 
**Passos:**
1.	Clone o repositório:
```sh
git clone https://github.com/thiago-fealves/nvimconfig ~/.config/nvim
```
2.	Abra o Neovim. O Lazy.nvim cuidará da instalação automática das dependências.
3.	Configure as permissões necessárias, se aplicável.

# 📦 Plugins e Funcionalidades

**Gerenciamento de Plugins**

A configuração usa o Lazy.nvim para instalar e atualizar os plugins automaticamente.

## Plugins Principais
	•	Lazy.nvim – Gerenciador de plugins
	•	Telescope – Pesquisa e navegação rápida
	•	Treesitter – Melhor realce de sintaxe e estrutura do código
	•	LSP – Suporte a linguagens com autocomplete e diagnósticos
	•	Dashboard-nvim – Tela inicial customizada
	•	ToggleTerm – Terminal integrado
	•	Harpoon – Navegação rápida entre arquivos
	•	Undotree – Histórico de alterações
	•	Autoclose – Fechamento automático de parênteses e aspas

# 📁 Estrutura dos Arquivos de Configuração

Os arquivos de configuração estão organizados da seguinte forma:
```
~/.config/nvim/
│── init.lua  # Arquivo principal de configuração
│── lua/
│   ├── autoclose.lua    # Configuração do Autoclose
│   ├── colors.lua       # Configuração de cores
│   ├── harpoon.lua      # Configuração do Harpoon
│   ├── lsp.lua          # Configuração do LSP
│   ├── telescope.lua    # Configuração do Telescope
│   ├── terminal.lua     # Configuração do terminal integrado
│   ├── treesitter.lua   # Configuração do Treesitter
│   ├── undotree.lua     # Configuração do Undotree
```
# 🎨 Aparência e Temas
	•	Tema baseado no Neon Lights
	•	Fonte: Hack Nerd Font
	•	Ícones das próprias NerdFonts
	•	Configuração personalizada de cores no arquivo colors.lua

# ⚡ Ferramentas de Produtividade
	•	Telescope para busca eficiente
	•	Treesitter para parsing avançado de código
	•	LSP para suporte a várias linguagens
	•	Harpoon para alternância rápida entre arquivos
	•	Undotree para gerenciamento de histórico
	•	Terminal Integrado via ToggleTerm

# 🛠 Personalização e Manutenção

Esta configuração está sempre sendo ajustada para melhor atender ao meu workflow, qualquer sugestão será muito bem vinda!!
Para modificar e customizar basta abrir o init.lua e alterar propriedades, temas e plugins
