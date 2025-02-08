# Gringodev.Dots

Este repositorio contiene la configuración personalizada de **Neovim** y un script para automatizar la instalación de dependencias y la configuración inicial.

---

## Requisitos

- **Sistema operativo**: macOS (probado en versiones recientes).
- **Gestor de paquetes**: [Homebrew](https://brew.sh/).

---

## Estructura del repositorio

Gringodev.Dots/
├── nvim/ # Configuración de Neovim
│ ├── init.lua # Punto de entrada principal
│ ├── lua/ # Módulos Lua
│ │ ├── core/ # Configuraciones básicas
│ │ ├── plugins/ # Configuración de plugins
│ │ └── config/ # Configuraciones adicionales
│ └── after/ # Configuraciones adicionales (opcional)
├── setup.sh # Script de instalación
└── README.md # Documentación del repositorio

---

## Script de instalación (`setup.sh`)

El script `setup.sh` automatiza la instalación de dependencias y la configuración de Neovim.

### ¿Qué hace el script?

1. **Instala dependencias**:

   - Neovim
   - Node.js
   - npm
   - Git
   - GCC
   - FZF
   - fd
   - ripgrep
   - coreutils
   - bat
   - curl
   - lazygit

2. **Crea el directorio de configuración**:

   - Crea la carpeta `~/.config/nvim` si no existe.

3. **Clona este repositorio**:

   - Clona el repositorio **Gringodev.Dots** en una carpeta temporal.

4. **Copia la configuración**:

   - Copia los archivos de configuración de Neovim a `~/.config/nvim`.

5. **Limpia archivos temporales**:
   - Elimina la carpeta temporal donde se clonó el repositorio.

---

### ¿Cómo usar el script?

1. **Descarga el script**:

   ```bash
   curl -o setup.sh https://raw.githubusercontent.com/Grincode/Gringodev.Dots/main/setup.sh

   ```

2. Haz el script ejecutable:
   ´´´bash
   chmod +x setup.sh
   ´´´

3. Ejecuta el script:
   ´´´bash
   ./setup.sh
   ´´´

Configuración de Neovim

La configuración de Neovim incluye:

    Temas de color: Usa el tema tokyonight.nvim.

    Plugins:

        nvim-treesitter: Resaltado de sintaxis.

        nvim-lspconfig: Configuración de LSP.

        nvim-cmp: Autocompletado.

        telescope.nvim: Búsqueda de archivos y texto.

    Atajos de teclado personalizados:

        <leader>ff: Buscar archivos con Telescope.

        <leader>fg: Buscar texto con Telescope.

        <leader>w: Guardar archivo.

        <leader>q: Salir de Neovim.
