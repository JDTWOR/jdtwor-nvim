--- jdtwor-theme — colorscheme con fondos transparentes (Kitty + `background_opacity`).
--- Repo: https://github.com/jdtwor/jdtwor-theme
local M = {}

--- Activa el colorscheme `kitty_transparent`.
--- Lazy: `jdtwor/jdtwor-theme` → `require("kitty_transparent").load()`
function M.load()
  vim.cmd.colorscheme("kitty_transparent")
end

--- Alias de conveniencia (estilo otros plugins).
M.setup = M.load

return M
