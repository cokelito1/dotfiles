set nocompatible
filetype off

syntax on
set timeoutlen=200

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'wellle/targets.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'dylanaraps/wal.vim'
Plugin 'preservim/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()
filetype plugin indent on

colorscheme wal

set showcmd
set relativenumber
set tabstop=4
set softtabstop=4
set shiftwidth=4

let g:airline#extensions#tabline#enabled=1
let g:airline_theme='minimalist'

let g:user_emmet_leader_key=','

let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_warning_symbol = '**'
let g:ycm_error_symbol = '->'

let mapleader = "\<Space>"

nnoremap <C-f> :NERDTreeToggle <CR>
nnoremap <C-b> :bp <CR>
nnoremap <C-n> :bn <CR>
nnoremap <C-c> :bd <CR>
nnoremap <C-q> :quit <CR>
nnoremap <C-s> :split <CR>

nnoremap <C-f><C-s> :YcmCompleter FixIt <CR>

nnoremap gd :YcmCompleter GoToDefinition <CR>

map <Leader> <Plug>(easymotion-prefix)

map H <C-w>h
map J <C-w>j
map K <C-w>k
map L <C-w>l
