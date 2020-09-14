"--plugin--"

source $HOME/.config/nvim/vim-plug/plugins.vim

"--Misc--"
source $HOME/.config/nvim/general/settings.vim


if !exists('g:vscode')

    "Colors
    sourc $HOME/.config/nvim/themes/gruvbox.vim
    source $HOME/.config/nvim/themes/airline.vim

    "--Key-Bindings--"

    source $HOME/.config/nvim/keys/mappings.vim

    "--Plugin-Config--"
    "
    source $HOME/.config/nvim/plug-config/rainbow.vim
    source $HOME/.config/nvim/plug-config/indentline.vim
    source $HOME/.config/nvim/plug-config/ultisnippits.vim
    source $HOME/.config/nvim/plug-config/vista.vim
    source $HOME/.config/nvim/plug-config/vim-lsp.vim
    source $HOME/.config/nvim/plug-config/vim-lsp-settings.vim
    source $HOME/.config/nvim/plug-config/deoplete.vim

endif
