local M = {}

---@param c table Paleta (`require("kitty_transparent.palette").colors`).
function M.setup(c)
  ---@param name string
  ---@param opts vim.api.keyset.highlight
  local function hl(name, opts)
    opts.force = true
    vim.api.nvim_set_hl(0, name, opts)
  end

  -- ========================
  -- Editor base
  -- ========================

  hl("Normal", { fg = c.fg, bg = c.bg })
  hl("NormalFloat", { fg = c.fg, bg = c.none })

  hl("CursorLine", { bg = c.bg_light })
  hl("LineNr", { fg = c.line_nr, bg = c.none })
  hl("CursorLineNr", { fg = c.line_nr_cur, bold = true, bg = c.none })

  hl("Visual", { bg = c.visual })
  hl("Pmenu", { fg = c.fg, bg = c.bg_light })
  hl("PmenuSel", { fg = c.bg_dark, bg = c.pmenu_sel, bold = true })

  -- ========================
  -- Sintaxis (vim + treesitter)
  -- ========================

  hl("Keyword", { fg = c.keyword, bold = true })
  hl("@keyword", { fg = c.keyword, bold = true })

  hl("Type", { fg = c.type_main, bold = true })
  hl("@type", { fg = c.type_main, bold = true })
  hl("@type.builtin", { fg = c.type_builtin, bold = true })
  hl("@type.definition", { fg = c.type_def, bold = true })

  hl("String", { fg = c.string_lit, bold = false })
  hl("@string", { fg = c.string_lit })

  hl("Function", { fg = c.func, bold = true })
  hl("@function", { fg = c.func, bold = true })
  hl("@function.method", { fg = c.method, bold = true })

  hl("@annotation", { fg = c.annotation, bold = true })

  hl("@variable", { fg = c.fg })
  hl("@variable.parameter", { fg = c.parameter, bold = true })

  hl("Comment", { fg = c.comment, italic = true })
  hl("@comment", { fg = c.comment, italic = true })

  hl("Operator", { fg = c.operator, bold = true })

  hl("@property", { fg = c.property, bold = true })
  hl("@field", { fg = c.field })
  hl("@boolean", { fg = c.keyword, bold = true, italic = true })

  hl("Include", { fg = c.import_col, bold = true })
  hl("@keyword.import", { fg = c.import_col, bold = true })
  hl("@include", { fg = c.import_col, bold = true })
  hl("@namespace", { fg = c.namespace_col, bold = true })
  hl("@module", { fg = c.module_col, bold = true, italic = true })

  -- ========================
  -- Diagnostics
  -- ========================

  hl("DiagnosticError", { fg = c.diag_error, bold = true })
  hl("DiagnosticWarn", { fg = c.diag_warn, bold = true })
  hl("DiagnosticInfo", { fg = c.diag_info, bold = true })
  hl("DiagnosticHint", { fg = c.diag_hint, bold = true })

  hl("DiagnosticUnderlineError", { undercurl = true, sp = c.diag_error })
  hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.diag_warn })
  hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.diag_info })
  hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.diag_hint })

  -- ========================
  -- Telescope
  -- ========================

  hl("TelescopeBorder", { fg = c.func, bold = true, bg = c.bg })
  hl("TelescopeSelection", { fg = c.type_main, bg = c.bg_light, bold = true })
  hl("TelescopeMatching", { fg = c.string_lit, bold = true })

  -- ========================
  -- CMP
  -- ========================

  hl("CmpItemKindFunction", { fg = c.func, bold = true })
  hl("CmpItemKindMethod", { fg = c.method, bold = true })
  hl("CmpItemKindVariable", { fg = c.parameter, bold = true })
  hl("CmpItemKindClass", { fg = c.type_main, bold = true })
  hl("CmpItemKindKeyword", { fg = c.keyword, bold = true })

  -- ========================
  -- UI
  -- ========================

  hl("StatusLine", { fg = c.fg, bg = c.bg_light, bold = true })
  hl("VertSplit", { fg = c.blue, bg = c.none })
  hl("WinSeparator", { fg = c.blue, bg = c.none })
end

return M
