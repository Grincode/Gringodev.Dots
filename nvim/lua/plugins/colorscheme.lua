return {
  {
    -- Plugin para Monokai Theme
    "tanvirtin/monokai.nvim",
    name = "monokai",
    lazy = false, -- Cargar inmediatamente
    priority = 1000, -- Asegurar que se carga temprano
    config = function()
      -- Aplicar Monokai Theme
      vim.cmd("colorscheme monokai")

      -- Configuración adicional para mejorar integración con plugins
      require("monokai").setup({
        transparent = true, -- Habilitar transparencia (opcional)
        italics = true, -- Habilitar cursiva en comentarios (opcional)
        overrides = {
          -- Personalizaciones específicas (opcional)
          NormalFloat = { bg = "none" }, -- Fondo transparente para ventanas flotantes
          FloatBorder = { bg = "none" }, -- Borde transparente para ventanas flotantes
        },
      })
    end,
  },
  {
    -- Plugin para habilitar transparencia
    "xiyaowong/transparent.nvim",
  },
  {
    -- Configuración de LazyVim para usar Monokai Theme
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monokai",
    },
  },
}
