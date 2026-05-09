-- kitty_transparent | https://github.com/jdtwor/jdtwor-theme
-- Entrada del colorscheme: paleta + highlights en módulos Lua.

vim.cmd.hi("clear")
vim.g.colors_name = "kitty_transparent"

vim.o.background = "dark"
vim.o.termguicolors = true

local c = require("kitty_transparent.palette").colors
require("kitty_transparent.highlights").setup(c)
