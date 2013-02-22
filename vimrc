set encoding=utf-8
"
" Pathogen configuration
" http://vim.wikia.com/wiki/256_colors_in_vim
"
execute pathogen#infect()
syntax on
filetype plugin indent on

set nocompatible      " Ensure Vim is running (as opposed to Vi)
filetype on           " Enable filetype detection

"
" Insert spaces when tab is pressed
" Display existing tabs as 2 spaces
" Reindent with two spaces
" Insert two spaces when pressing tab in insert mode
" http://tedlogan.com/techblog3.html
" http://vim.wikia.com/wiki/Converting_tabs_to_spaces
"
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab

"
" Keep the same indentation when inserting a new line
" http://vim.wikia.com/wiki/Indenting_source_code#.27autoindent.27
"
set autoindent

"
" Always show line numbers
" http://vim.wikia.com/wiki/Display_line_numbers
" Highlight the current line
" http://vim.wikia.com/wiki/Highlight_current_line
"
set number
set cursorline

" Set 256 color support
" http://vim.wikia.com/wiki/256_colors_in_vim
"
set t_Co=256

"
" Set colorscheme
" http://vim.wikia.com/wiki/Change_the_color_scheme
" https://github.com/altercation/vim-colors-solarized
" Note: this statement needs to be after the 256 color support setup
"
syntax enable
set background=dark
colorscheme solarized


"
" Enables ctrlp plugin
" http://kien.github.com/ctrlp.vim/#installation
"
set runtimepath^=~/.vim/bundle/ctrlp.vimA

"
" Adds patched  font support for powerline
" Display the powerline also in single window
" https://github.com/Lokaltog/vim-powerline
" http://alexyoung.org/2012/01/13/using-powerline-with-mac-os/
"
let g:Powerline_symbols = 'fancy'
set laststatus=2


" ---------------------------------
" Remaps
" ---------------------------------

"
" Switch plugin
" https://github.com/AndrewRadev/switch.vim
"
nnoremap - :Switch<cr>
