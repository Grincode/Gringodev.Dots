if status is-interactive
    # Commands to run in interactive sessions can go here
end

if test (uname) = Darwin
    # macOS
    set BREW_BIN /opt/homebrew/bin/brew
else
    # Linux
    set BREW_BIN /home/linuxbrew/.linuxbrew/bin/brew
end

# Iniciar el agente SSH si no está en ejecución
if not set -q SSH_AUTH_SOCK
    eval (ssh-agent -c)
end

# Agregar tu clave SSH
ssh-add ~/.ssh/id_ed25519 2>/dev/null


eval ($BREW_BIN shellenv)

if not set -q TMUX
    tmux
end

starship init fish | source
zoxide init fish | source
atuin init fish | source

set -x PATH $HOME/.cargo/bin $PATH
set -Ux CARAPACE_BRIDGES 'zsh,fish,bash,inshellisense'
mkdir -p ~/.config/fish/completions
carapace --list | awk '{print $1}' | xargs -I{} touch ~/.config/fish/completions/{}.fish
carapace _carapace | source

set -x LS_COLORS "di=38;5;67:ow=48;5;60:ex=38;5;132:ln=38;5;144:*.tar=38;5;180:*.zip=38;5;180:*.jpg=38;5;175:*.png=38;5;175:*.mp3=38;5;175:*.wav=38;5;175:*.txt=38;5;223:*.sh=38;5;132"
#set -g fish_greeting "Hello World"
function fish_greeting
    echo -e "\e[1;34m💻 'Cada bug es una lección.' 🚀\e[0m"
    sleep 2
    clear
end


## alias
alias ls='gls --color=auto'
alias fzfbat='fzf --preview="bat --theme=tokyonight --color=always {}"'
alias fzfnvim='nvim (fzf --preview="bat --theme=tokyonight --color=always {}")'

# Tokyo Night Colors
set -l foreground c0caf5 # Azul claro para texto principal
set -l selection 33467C # Azul oscuro para selección
set -l comment 565f89 # Gris para comentarios
set -l red f7768e # Rojo Tokyo Night
set -l orange ff9e64 # Naranja Tokyo Night
set -l yellow e0af68 # Amarillo Tokyo Night
set -l green 9ece6a # Verde Tokyo Night
set -l purple bb9af7 # Púrpura Tokyo Night
set -l cyan 7dcfff # Cian Tokyo Night
set -l pink f7768e # Rosa Tokyo Night

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment

clear
