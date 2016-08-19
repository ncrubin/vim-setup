
set nocompatible  " use vim instead of vi
filetype off  

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'Valloric/YouCompleteMe' 
Plugin 'altercation/vim-colors-solarized'
Plugin 'nvie/vim-flake8'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'
Plugin 'tpop/vim-fugitive'

call vundle#end()            " required
filetype plugin indent on    " required

" The former line ensures that the autocomplete window goes away when you’re
" done with it, and the latter defines a shortcut for goto definition. My
" leader key is mapped to space, so space-g will goto definition of whatever
" I’m currently on. Helpful when exploring new code.
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" basics
set ts=4
set expandtab
set softtabstop=4
set shiftwidth=4
set showmatch
set encoding=utf-8
set number
syntax enable
set background=dark
colorscheme solarized
let python_highlight_all=1
syntax on

" status line showing
set laststatus=2

" syntastic defaults.  need to look up later
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_python_flake8_args = "--ignore=E501"
let g:syntastic_python_flake8_args = "--max-line-length=160"

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"" might need this is on macvim
"if has('gui_running')
"    set background=light
"else
"    set background=dark
"endif

set autoindent
set noerrorbells
set tw=79
set ruler

if has("autocmd")
      au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
endif

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
