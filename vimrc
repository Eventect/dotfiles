set encoding=utf-8

" Backspace fix
" http://vim.wikia.com/wiki/Backspace_and_delete_problems
"
set backspace=indent,eol,start
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
"
" Custom colors
"
if !exists("autocmd_colorscheme_loaded")
  let autocmd_colorscheme_loaded = 1
  autocmd ColorScheme * highlight Todo guibg=#002b37 ctermfg=Red     guifg=#E01B1B
endif


if has("autocmd")
  if v:version > 701
    autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|CHANGED\|XXX\|BUG\|HACK\|REFACTOR\|REMOVED\)')
  endif
endif

colorscheme railscasts


"
" Enables ctrlp plugin
" http://kien.github.com/ctrlp.vim/#installation
"
set runtimepath^=~/.vim/bundle/ctrlp.vimA
let g:ctrlp_custom_ignore = 'doc/app/*.*\|tmp/\|app/assets/images/*.*\|vendor/assets/images/*.*\|bin/*.*\|bundler_stubs/*.*\|log/*.*\|public/upload/*'

"
" Adds patched font support for powerline
" Display the powerline also in single window
" https://github.com/bling/vim-airline
" http://alexyoung.org/2012/01/13/using-powerline-with-mac-os/
"
let g:Powerline_symbols = 'fancy'
set laststatus=2
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
let g:airline_powerline_fonts = 1


" ---------------------------------
" Remaps
" ---------------------------------

"
" Switch plugin
" https://github.com/AndrewRadev/switch.vim
"
nnoremap - :Switch<cr>

"
" Change cursor shape in xterm when moving to
" Insert mode
" http://vim.wikia.com/wiki/Configuring_the_cursor
"
if &term =~ '^xterm'
  " solid underscore
  let &t_SI .= "\<Esc>[6 q"
  " solid block
  let &t_EI .= "\<Esc>[2 q"
  " 1 or 0 -> blinking block
  " 3 -> blinking underscore
  " Recent versions of xterm (282 or above) also support
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar
endif

" 
" Highlight search (pattern match) results
" Use the spacebar to remove the highlights
" http://vim.wikia.com/wiki/Highlight_all_search_pattern_matches
"
set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"
" Maps :NERDTree to leader-n
"
"map <leader>n :NERDTree<Enter>

" " Cmd-Shift-R for RSpec
" nmap <silent> <C-R> :call RunRspecCurrentFileConque()<CR>
" " Cmd-Shift-L for RSpec Current Line
" nmap <silent> <C-L> :call RunRspecCurrentLineConque()<CR>
" " ,Cmd-R for Last conque command
" nmap <silent> ,<C-R> :call RunLastConqueCommand()<CR>

" http://robots.thoughtbot.com/post/48933156625/5-useful-tips-for-a-better-commit-message
" Better git commit messages
autocmd Filetype gitcommit setlocal spell textwidth=72

"
" http://kien.github.io/ctrlp.vim/#installation
"
set runtimepath^=~/.vim/bundle/ctrlp.vim

"
" https://github.com/thoughtbot/vim-rspec
"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>

let g:rspec_command = "!time zeus rspec {spec}"

nnoremap <silent><c-b> :CtrlPBuffer<CR>
