# jdtwor-theme

Colorscheme **kitty_transparent** para **Neovim**: fondos transparentes (`guibg` / `ctermbg` en `NONE` donde aplica), pensado para terminales con alpha como **Kitty** (`background_opacity`).

Repositorio: [https://github.com/jdtwor/jdtwor-theme](https://github.com/jdtwor/jdtwor-theme)

Requiere Neovim **0.8+** (usa `nvim_set_hl`). Activa `termguicolors` al cargar el tema.

## Instalación con [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "JDTWOR/jdtwor-theme",
  priority = 1000,
  lazy = false,
  config = function()
    require("kitty_transparent").load()
  end,
}
```

Sin el módulo Lua (mismo resultado):

```lua
{
  "jdtwor/jdtwor-theme",
  priority = 1000,
  lazy = false,
  config = function()
    vim.cmd.colorscheme("kitty_transparent")
  end,
}
```

El nombre del colorscheme sigue siendo **`kitty_transparent`** (`:colorscheme kitty_transparent`).

## Kitty

Ejemplo en `kitty.conf`:

```conf
background_opacity 0.92
dynamic_background_opacity yes
```

Neovim no dibuja color de fondo en `Normal`; lo que se ve detrás lo controla la terminal.

## GitHub

Si aún no enlazaste el remoto:

```bash
cd /ruta/a/jdtwor-theme
git remote add origin https://github.com/jdtwor/jdtwor-theme.git
git branch -M main
git push -u origin main
```

## English

Install with lazy.nvim using `jdtwor/jdtwor-theme`, then `require("kitty_transparent").load()` or `:colorscheme kitty_transparent`. Use terminal transparency (e.g. Kitty `background_opacity`).

## Licencia

MIT
