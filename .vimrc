set nocompatible

filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-rails.git'
Bundle 'tomasr/molokai'
" vim-scripts repos

filetype plugin indent on     " required!
set t_Co=256

colorscheme molokai " uses molokai for the color scheme
syntax on " turns on syntax highlighting
" changes the way tabs look
hi TabLine term=none cterm=none ctermfg=15 ctermbg=242 gui=underline guibg=DarkGrey


set backupdir=~/.backup,/tmp
set backspace=indent,eol,start

set history=50
set showcmd

" sets fancy completion menu
set wildmode=full:longest,full
set wildmenu

" less intrusive   completion
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
      \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
      \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'


" nicer search settings
set hlsearch " highlight search terms
set incsearch " search as you type
set ignorecase " ignore letter case
set smartcase " unless the search term has an uppercase char in it

map Q gq

set scrolloff=3 " keeps 3 lines at the top or bottom of the screen
set ruler " displays line and column in the status bar

" use two spaces for tabs
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

set autoindent " some nicer indenting

set mouse=a " turn on mouse support

set autoread " I think this puts the cursor at the location it was last time the file was edited

set laststatus=2
set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%) " make the status line pretty
set fillchars=vert:│ " use a single bar to seperate vertical splits

" map Ctrl / to clear search highlight
nnoremap  :noh<CR>

" navigate buffers with ctrl h, l
nnoremap  
nnoremap  

" navigate tabs with ctrl j, k
nnoremap <C-j> :tabn<CR>
nnoremap  :tabp<CR>

" opening new tabs
cnoreabbrev td tab drop
cnoreabbrev tn tabnew


set number " turn on line numbers
set nowrap " turn off line wraping

set cursorline " Highlight the current line

" auto intenting stuff (probably)
if has("autocmd")
  filetype plugin indent on
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
else
  set autoindent
endif
