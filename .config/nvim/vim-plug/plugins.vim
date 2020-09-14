set nocompatible

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
if exists('g:vscode')
    Plug 'asvetliakov/vim-easymotion'
else
    Plug 'easymotion/vim-easymotion'
    Plug 'junegunn/rainbow_parentheses.vim'
    Plug 'Yggdroot/indentLine'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'mboughaba/i3config.vim'
    Plug 'junegunn/fzf.vim'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'ptzz/lf.vim'
    Plug 'rbgrouleff/bclose.vim'
    Plug 'liuchengxu/vista.vim'
    Plug 'liuchengxu/vim-which-key'
    Plug 'mhinz/vim-startify'
    Plug 'airblade/vim-gitgutter'
    Plug 'sheerun/vim-polyglot'
    Plug 'vimwiki/vimwiki'
    Plug 'Chiel92/vim-autoformat'
    Plug 'tpope/vim-fugitive'

    "Colors
    Plug 'ghifarit53/tokyonight-vim'
    Plug 'morhetz/gruvbox'

    "vim-lsp
    Plug 'prabirshrestha/async.vim'
    Plug 'prabirshrestha/vim-lsp'
    Plug 'mattn/vim-lsp-settings'
    Plug 'thomasfaingnaert/vim-lsp-snippets'
    Plug 'thomasfaingnaert/vim-lsp-ultisnips'

    "Completion with Deoplete
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'lighttiger2505/deoplete-vim-lsp'
endif

call plug#end()
