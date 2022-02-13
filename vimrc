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

syntax on
