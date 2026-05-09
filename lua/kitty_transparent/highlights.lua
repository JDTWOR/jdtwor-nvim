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
  hl("LineNr", { fg = "#5a6374", bg = c.none })
  hl("CursorLineNr", { fg = "#ffd166", bold = true, bg = c.none })

  hl("Visual", { bg = "#264f78" })
  hl("Pmenu", { fg = c.fg, bg = c.bg_light })
  hl("PmenuSel", { fg = c.bg_dark, bg = "#4cc9f0", bold = true })

  -- ========================
  -- Sintaxis (vim + treesitter)
  -- ========================

  hl("Keyword", { fg = "#ff6b6b", bold = true })
  hl("@keyword", { fg = "#ff6b6b", bold = true })

  hl("Type", { fg = "#ffd166", bold = true })
  hl("@type", { fg = "#ffd166", bold = true })
  hl("@type.builtin", { fg = "#f4a261" })
  hl("@type.definition", { fg = "#f4a261", bold = true })

  hl("String", { fg = "#06d6a0" })
  hl("@string", { fg = "#06d6a0" })

  hl("Function", { fg = "#4cc9f0", bold = true })
  hl("@function", { fg = "#4cc9f0", bold = true })
  hl("@function.method", { fg = "#4cc9f0" })

  hl("@annotation", { fg = "#ff006e", bold = true })

  hl("@variable", { fg = c.fg })
  hl("@variable.parameter", { fg = "#90e0ef" })

  hl("Comment", { fg = "#8ecae6", italic = true })
  hl("@comment", { fg = "#8ecae6", italic = true })

  hl("Operator", { fg = "#ffb703" })

  hl("@property", { fg = "#c77dff" })
  hl("@field", { fg = "#a8dadc" })
  hl("@boolean", { fg = "#ff6b6b", italic = true })

  -- Imports / paquetes (Spring, Java, etc.)
  hl("Include", { fg = "#ff9f1c" })
  hl("@keyword.import", { fg = "#ff9f1c" })
  hl("@include", { fg = "#ff9f1c" })
  hl("@namespace", { fg = "#ffd166" })
  hl("@module", { fg = "#e76f51", italic = true })

  -- ========================
  -- Diagnostics
  -- ========================

  hl("DiagnosticError", { fg = "#ff4d6d", bold = true })
  hl("DiagnosticWarn", { fg = "#ffb703", bold = true })
  hl("DiagnosticInfo", { fg = "#4cc9f0" })
  hl("DiagnosticHint", { fg = "#90e0ef" })

  hl("DiagnosticUnderlineError", { undercurl = true, sp = "#ff4d6d" })
  hl("DiagnosticUnderlineWarn", { undercurl = true, sp = "#ffb703" })

  -- ========================
  -- Telescope
  -- ========================

  hl("TelescopeBorder", { fg = "#4cc9f0", bg = c.bg })
  hl("TelescopeSelection", { bg = c.bg_light })
  hl("TelescopeMatching", { fg = "#ffd166", bold = true })

  -- ========================
  -- CMP
  -- ========================

  hl("CmpItemKindFunction", { fg = "#4cc9f0" })
  hl("CmpItemKindMethod", { fg = "#4cc9f0" })
  hl("CmpItemKindVariable", { fg = "#90e0ef" })
  hl("CmpItemKindClass", { fg = "#ffd166", bold = true })
  hl("CmpItemKindKeyword", { fg = "#ff6b6b" })

  -- ========================
  -- UI
  -- ========================

  hl("StatusLine", { fg = c.fg, bg = c.bg_light })
  hl("VertSplit", { fg = c.bg_light, bg = c.none })
  hl("WinSeparator", { fg = c.bg_light, bg = c.none })
end

return M
