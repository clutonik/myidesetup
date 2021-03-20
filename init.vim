" set nocompatible " Disable compatibility with vi
" filetype on " Disable filetype detection
syntax on " Enable syntax highlighting

" Set runtime path to include vim-plug
call plug#begin('~/.vim/plugged')

Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
" Fuzzy Finder to traverse files
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" statusline
Plug 'itchyny/lightline.vim'
" python
Plug 'python-mode/python-mode'
Plug 'vim-scripts/indentpython.vim'
Plug 'python-rope/ropevim'
" Plug 'Valloric/YouCompleteMe'
Plug 'nvie/vim-flake8'
Plug 'majutsushi/tagbar'

call plug#end()

" Colors/themes
colorscheme gruvbox

" editor section to enable vim editing settings, add more settings to this section
" if you think you want to set new options
set exrc " To Load custom vimrc files inside project files
set laststatus=2 " To enable lighline statusline
set guicursor= " Enable block cursor for insert mode
set nohlsearch " disable search highlights
set hidden " To allow buffers to remain open
set noerrorbells " Disable error sounds
set nowrap " Disable test wrapping
set noswapfile " Do not create swapfile for a new buffer
set nobackup
set undodir=~/.vim/undodir
set undofile
set cmdheight=2
set updatetime=50 " Avoids delays file vim is writing contents to a file
" Indent Settings
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
" set smartindent
filetype indent on
set autoindent
" Allows me to jump to a line relatively below using options like 12j
set relativenumber 
" Allows me to see the actual line numbers to the left
set nu
 " Allows me to see the word I am searching as I type
set incsearch 
" Allows me to scroll through a file without actually going till the last 
" line which is the default
set scrolloff=8 
" Allows me to see the lint or other errors in the left column
set signcolumn=yes
" Warns me that I am indenting too much
" set colorcolumn=80 
"
" nerdtree
" -----------------
let NERDTreeIgnore=['\.pyc$','\~$']

" Remaps
" -----------------------
let mapleader = " "
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Search Project For > ")})<CR>
" buffers
nnoremap <leader>bb :buffers<CR>:buffer<Space>
" save file like spacemacs
nnoremap <leader>fs :w<CR>

" fzf
" ---- Find files,lines and commits
" map <leader>ff :Files!<CR>
let g:ctrlp_working_path_mode = 'ra'
map <leader>ff :CtrlP<CR><Space>
noremap <C-f> <Esc><Esc>:Lines!<CR>
" map <leader>gc <Esc><Esc>:BCommits!<CR>
"

" python
" --------------------------------
"  Indentation autocmds
autocmd BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set encoding=utf-8
" ycm
"let g:ycm_autoclose_preview_window_after_completion=1
"let g:ycm_path_to_python_interpreter='/usr/local/bin/python3'

" pymode
let g:pymode_rope=1
let g:pymode_rope_completion=1
let g:pymode_rope_complete_on_dot=1
let g:pymode_rope_autoimport=1
let g:pymode_rope_goto_definition_bind = '<leader>g'
let g:pymode_syntax=1

"map <leader>d  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"map <leader>g  :YcmCompleter GoToDefinition<CR>
" General
let python_highlight_all=1

" javascript, html and css
" Indentation autocmds
autocmd BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

