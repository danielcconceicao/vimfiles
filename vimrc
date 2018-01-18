" ~/.vimrc

" Create by: Daniel C. Conceição
" E-mail:daniel.c.conceicao@gmail.com

set nocompatible

" ### Plug setup  {{{
filetype off
call plug#begin('~/.vim/plugged')
"}}}

" ### Bundles  {{{
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'rodjek/vim-puppet'
" }}}

" ### Plug post-setup {{{
call plug#end()
filetype plugin indent on    " required
" }}}


" {{{ Window and editor setup

" Display incomplete commands.
set showcmd
" Display the mode you're in.
set showmode

" Enhanced command line completion.
set wildmenu
" " Complete files like a shell.
set wildmode=list:longest

" Set the terminal's title
set title
" No beeping.
set visualbell

" Display line number
set number
" Display cursor position
set ruler
" Enable syntax highlighting
syntax on

" Allows the mouse to be used
"set mouse=a

" Highlight matches as you type.
set incsearch
" Don't highlight matches.
set nohlsearch

" Set encoding
set encoding=utf-8

" Use 256 colors
set t_Co=256

let mapleader=','

" Whitespace features
set tabstop=4
set shiftwidth=4
set softtabstop=4
set list listchars=tab:▸\ ,eol:¬,trail:.
set noeol
set autoindent

" Enable formatting of comments, and one letter words.
" see :help fo-table
set formatoptions=o

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Show the status line all the time
set laststatus=2
" Useful status information at bottom of screen
set statusline=
set statusline+=[%n]
set statusline+=\ %<%.99f
set statusline+=\ %h%w%m%r%y
set statusline+=\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}
set statusline+=%=%-16(\ %l,%c-%v\ %)
set statusline+=%P

" Sets the colorscheme for terminal sessions too.
colorscheme molokai
autocmd BufEnter * colorscheme molokai


" ### Plugin settings  {{{
" ### NERDTree  {{{
noremap <leader>ft :NERDTreeToggle<CR>
"
" Don't fuck up vim's default file browser
let g:NERDTreeHijackNetrw = 0
" }}}
" }}}

" ### Filetype-specific  {{{
"
" ### Puppet  {{{
" Specific shiftwidth for puppet files
autocmd BufRead,BufNewFile *.pp set filetype=puppet
autocmd BufRead,BufNewFile Puppetfile set filetype=ruby

" And custom tab sizes too
autocmd FileType puppet set shiftwidth=2
autocmd FileType puppet set tabstop=2
" }}}
" }}}
