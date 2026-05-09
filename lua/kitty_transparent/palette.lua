--- Paleta central: fondo transparente + acentos vivos (alta saturación).
local M = {}

M.colors = {
  bg = "NONE",
  bg_dark = "#070510",
  bg_light = "#241f38",

  fg = "#f7f4ff",
  gray = "#9d96c4",

  -- Tokens base (compat)
  red = "#ff5c8a",
  green = "#3dffc4",
  yellow = "#ffe566",
  blue = "#38b6ff",
  magenta = "#ea80fc",
  cyan = "#18ffff",

  none = "NONE",

  -- Acentos “eléctricos” (sintaxis)
  keyword = "#ff4f7d",
  type_main = "#ffe135",
  type_builtin = "#ffb300",
  type_def = "#ff8c42",
  string_lit = "#00ffb3",

  -- Funciones / métodos: definición vs llamada (máximo contraste con el fg)
  func_def = "#00f0ff",
  func_call = "#d4ff4a",
  method_def = "#5dff9a",
  method_call = "#ff9f1a",
  constructor = "#ff4081",

  -- Compat (UI que aún usa c.func / c.method)
  func = "#00f0ff",
  method = "#5dff9a",

  annotation = "#ff0ab8",
  parameter = "#00ffc6",
  variable = "#d8c8ff",
  comment = "#5cdbff",
  operator = "#ffdd2e",
  property = "#df73ff",
  field = "#8dffc8",
  import_col = "#ff9100",
  namespace_col = "#fff15c",
  module_col = "#ff6b35",

  -- Editor chrome
  line_nr = "#5c6d8c",
  line_nr_cur = "#ffea6b",
  visual = "#2d4fc9",
  pmenu_sel = "#00d4ff",

  -- Diagnostics
  diag_error = "#ff2d6a",
  diag_warn = "#ffd000",
  diag_info = "#00d4ff",
  diag_hint = "#7dffff",
}

return M
