" Sources: 
"     https://vim.fandom.com/wiki/Example_vimrc
"     https://dougblack.io/words/a-good-vimrc.html

" TODO: Check https://github.com/amix/vimrc
 
" Colorscheme
colorscheme koehler

" Enable syntax highlighting
syntax on

" Show line numbers
set number

" Show file stats
set ruler

" Better command-line completion
set wildmenu
 
" Show partial commands in the last line of the screen
set showcmd

" Highlight current line
set cursorline

" Highlight matching [{()}]
set showmatch
 
" Highlight searches
set hlsearch

" Search as characters are entered
set incsearch

" Use case insensitive search, except when using capital letters
set smartcase

" Display the cursor position on the last line of the screen or in the status line of a window
set ruler
 
" Always display the status line, even if only one window is displayed
set laststatus=2

" Disable beep and flash
set visualbell
set t_vb=

" Enable use of the mouse for all modes
set mouse=a

set tabstop=4
set softtabstop=4
