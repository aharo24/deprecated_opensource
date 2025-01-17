######## Commands to run in interactive sessions can go here ########
if status is-interactive
    
    # Set the EDITOR
    set -x EDITOR nvim

    # Set the fish greeting
    set fish_greeting

    # Initialize Starship prompt
    starship init fish | source

    # NVIM POSTGRESQL 
    set -U fish_user_paths $fish_user_paths /Users/aharo/.cargo/bin
    
  # Set Rust's cargo bin path
    set -x PATH "$HOME/.cargo/bin" $PATH

    # Set Python path
    set -gx PATH /Library/Frameworks/Python.framework/Versions/3.8/bin $PATH
    
    # Set PYENV_ROOT and add to user paths
    set -Ux PYENV_ROOT $HOME/.pyenv
    set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
    
    # Initialize pyenv
    if type pyenv > /dev/null 2>&1
        pyenv init - | source
    end

    # Set Emacs path
    set -gx PATH "/Applications/MacPorts/Emacs.app/Contents/MacOS" $PATH

    # Set the Starship configuration path
    set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml

    # Set local bin path created by `pipx`
    set -x PATH $PATH /Users/aharo/.local/bin

    # Set JAVA_HOME and add Java binary to PATH
    set -gx JAVA_HOME (brew --prefix openjdk@17)
    # set -gx JAVA_HOME (brew --prefix openjdk@11)

    set -gx PATH $JAVA_HOME/bin $PATH
end
#################################################################################

# Set lvim as default editor for Vim commands
function vim
    nvim $argv
end

