"Executes all the thigns in pathogen
filetype off
execute pathogen#infect()
execute pathogen#helptags()

filetype plugin indent on

syntax on

"Note: CapsLock is mapped to Esc in KDE

"Set 256 colors
set t_Co=256

"Shows line number
set number

"Highlight line w/cursor
set cursorline

"Draw a bar at 80 characters
set colorcolumn=80

"Always use utf-8
set encoding=utf-8

" use language's specification file to autoindent
set autoindent

" Spaces and Tabs {{{
" how large is a existing \t character?
set tabstop=4

"When reindenting, how many spaces to shift?
set shiftwidth=4

"Round to nearest shiftwidth when using << or >>
set shiftround

"When you hit tab, how many characters will be inserted?
set softtabstop=4

"tell vim to insert spaces rather than \t characters
set expandtab

" }}}
" {{{ Search
"Case insensitivity
set ignorecase

"Make case insensitivity 'smarter' (regex matching is stricter in some cases)
set smartcase

"Hilight search results
set hlsearch

"Don't wrap long lines
set nowrap

"Turn off both backing up files and swap files - these are just annoying
set nobackup
set noswapfile

"Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Hide default status line
set noshowmode

"Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"sudo stuff
cmap w! w !sudo tee %>/dev/null

"Lightline Configuration
let g:lightline = {
            \ 'colorscheme': 'jellybeans',
            \ 'separator': { 'left': '|', 'right': '|' },
            \ }

"Maps // to command that copies visually selected text into search command
"Note: * will search for the word under the cursor
vnoremap // y/<C-R>"<CR>

"colorscheme
Plugin 'tomasr/molokai'
colorscheme colorsbox-stbright 
