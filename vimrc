" # ==================== #
" |  Hauctopuce's Vimrc  |
" # ==================== #

"  Vundle Configuration
" ======================

set nocompatible	"required
filetype off		"required

" Set the runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim

" Vundle initialization
call vundle#begin()

" Let Vundle manage Vundle, REQUIRED!
Plugin 'VundleVim/Vundle.vim'
" <INSERT PLUGINS AFTER THIS LINE>

" Autocompletion features
Plugin 'ycm-core/YouCompleteMe'

" A better status line
Plugin 'itchyny/lightline.vim'

" Automatic bracket/quotes/parenthesis closing
Plugin 'raimondi/delimitmate'

" Language relative plugins:
" ===========================

" Rust
Plugin 'rust-lang/rust.vim'

" <INSERT PLUGINS BEFORE THIS LINE>
call vundle#end()

filetype plugin indent on	"required

"  Basic Vim Configuration
" =========================

syntax on

" Printing line number on the left margin
set nu

" Setting the tab as 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Settings of the backspace key
set backspace=eol,start,indent

" Automatic code indentation
set autoindent

" Underline the current line on which the cursor is
set cursorline

" Highlighting the characters over the 90th column
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%91v.\+/

" Configuration for Lightline
set laststatus=2

let g:netrw_liststyle = 3
let g:netrw_banner = 1
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15
augroup ProjectDrawer
	autocmd!
	autocmd VimEnter * :Vexplore
augroup END



