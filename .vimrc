" Automatically install the plugin manager if missing {{{
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" }}}

" Load plugins {{{
call plug#begin('~/.vim/plugged')

" File explorer
Plug 'preservim/nerdtree'

" Markdown plugin still have to learn how to use it
Plug 'SidOfc/mkdx'

" Vim tmux still have to learn how to use it
Plug 'christoomey/vim-tmux-navigator'

" Typescript syntax highlither and helper
Plug 'leafgarland/typescript-vim'

" Vim Go defacto standard for Go syntax and helper on vim
Plug 'fatih/vim-go'

" FZF fuzzy search plugin
Plug 'junegunn/fzf'

" Table driven test generator
Plug 'buoto/gotests-vim'

" Install RipGrep
Plug 'jremmen/vim-ripgrep'

call plug#end()
" }}}

" Enables file lines with a legible font and color scheme {{{
set number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
" }}}

set title
set smartindent
set encoding=utf-8

" Ingore cases when searching lowercase
set ignorecase

" Do not ignore case when searching lower-upper case
set smartcase

" Highlight search result
set hlsearch

" Show matching brackets
set showmatch

" Show cursor position at all times
set ruler

" Fuzzy search (fzf) mapping to \f
nmap <leader>f :FZF<cr>

" Toggle NERDTree map to \nt
nmap <leader>nt :NERDTree<cr>

" Ripgrep
nmap <leader>rg :Rg<space>

" mapping for paste (so that overwriting visual selection doesn't pick up the
" overwritten text into the buffer, but just paste over it)
xnoremap p "_dP

" supposed to fix slowness caused by vim-nerdtree-syntax-highlight
set lazyredraw

let NERDTreeShowHidden=1

