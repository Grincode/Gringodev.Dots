Este repositorio contiene la configuración personalizada de Neovim y un script para automatizar la instalación de dependencias y la configuración inicial.
Requisitos

    Sistema operativo: macOS (probado en versiones recientes).

    Gestor de paquetes: Homebrew.

Estructura del repositorio
Copy

Gringodev.Dots/
├── nvim/ # Configuración de Neovim
│ ├── init.lua # Punto de entrada principal
│ ├── lua/ # Módulos Lua
│ │ ├── core/ # Configuraciones básicas
│ │ ├── plugins/ # Configuración de plugins
│ │ └── config/ # Configuraciones adicionales
│ └── after/ # Configuraciones adicionales (opcional)
└── setup.sh # Script de instalación

Script de instalación (setup.sh)

El script setup.sh automatiza la instalación de dependencias y la configuración de Neovim.
¿Qué hace el script?

    Instala dependencias:

        Neovim

        Node.js

        npm

        Git

        GCC

        FZF

        fd

        ripgrep

        coreutils

        bat

        curl

        lazygit

    Crea el directorio de configuración:

        Crea la carpeta ~/.config/nvim si no existe.

    Clona este repositorio:

        Clona el repositorio Gringodev.Dots en una carpeta temporal.

    Copia la configuración:

        Copia los archivos de configuración de Neovim a ~/.config/nvim.

    Limpia archivos temporales:

        Elimina la carpeta temporal donde se clonó el repositorio.

¿Cómo usar el script?

    Descarga el script:
    bash
    Copy

    curl -o setup.sh https://raw.githubusercontent.com/Grincode/Gringodev.Dots/main/setup.sh

    Haz el script ejecutable:
    bash
    Copy

    chmod +x setup.sh

    Ejecuta el script:
    bash
    Copy

    ./setup.sh

Ejemplo de uso
bash
Copy

# Descargar el script

curl -o setup.sh https://raw.githubusercontent.com/Grincode/Gringodev.Dots/main/setup.sh

# Hacer el script ejecutable

chmod +x setup.sh

# Ejecutar el script

./setup.sh

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

Contribuciones

Si encuentras algún problema o tienes sugerencias para mejorar la configuración, ¡no dudes en abrir un issue o enviar un pull request!
Licencia

Este proyecto está bajo la licencia MIT.

¡Esperamos que esta configuración te sea útil! Si tienes alguna pregunta, no dudes en contactarnos. 😊
Notas adicionales

    Asegúrate de tener Git instalado antes de ejecutar el script.

    Si prefieres usar Fish Shell, asegúrate de ajustar los comandos según sea necesario.

¡Gracias por usar Gringodev.Dots! 🚀
