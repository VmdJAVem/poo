# ~/.config/fish/config.fish

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias minecraft='java -jar ~/Downloads/SKlauncher-3.2.12.jar'
alias unimatrix='unimatrix -n -s 96 -l o'
alias neofetch='command neofetch --source ~/neofetch_ascii/aphex_twin'
alias clock='tty-clock -c -s -b -f "%H:%M:%S" -C 3 -B "#6a2c8d" -t'
alias cowsay='fortune | command cowsay -f stegosaurus'
alias ff='fastfetch'
alias config='/usr/bin/git --git-dir=$HOME/poo --work-tree=$HOME'
alias archfetch='neofetch --source neofetch_ascii/arch.txt'
alias cd='z'
function fish_greeting
    fortune -a
end
# Prompt customization
function fish_prompt
    echo -n " λ "
    if test (pwd) = $HOME
        echo -n "~"
        echo -n " "
    else
        echo -n (basename (pwd))
        set_color normal
        echo -n " "
    end
end
function fish_right_prompt
    # Use printf to right-align mommy's output dynamically
    printf "%*s" $COLUMNS (mommy -1 -s $status)
end
# Homebrew setup
eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# fzf key bindings and fuzzy completion
fzf --fish | source

# PATH configuration
set -gx PATH $PATH /home/vmdjavem/.local/bin

#zoxide
zoxide init fish | source
# Start fastfetch
ff
