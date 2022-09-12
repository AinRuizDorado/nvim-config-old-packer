-- Maneja el lsp con cmp para mostrar el auto completado
require('lsp.completion')
-- configuracion del treesitter para mejores colores en texto
require('lsp.treesitter')
require("lsp.nvim-context")
-- Telescope para buscar archivos y codigo en archivos
require("lsp.telescope")
-- Configuracion de Keymaps, parte esta en el init.vim parte qui
require("lsp.keymaps")
-- Configuracion visual de neovim
require("lsp.theme")
-- Configuracion de servidores de lenguaje
require('lsp.lsp')
-- Configuracion de Null-ls y eslint
require("lsp.null-ls-eslint")
-- Configuracion de GitSigns para que se muestre el registro git a la derecha de la linea
require("lsp.gitSigns")
-- Configuracion de BlankLine para saber que bloque de codigo estas
require("lsp.blankLine")

-- Mason se encarga de mostrarme que servidores de lenguaje estan corriendo
require("mason").setup()
require("mason-lspconfig").setup()
