execute pathogen#infect()

filetype plugin on

set showmatch
set expandtab
set tabstop=4
set shiftwidth=4
set ruler
set et
set ignorecase
set ch=2  "vim command line height
syntax on
set hlsearch
highlight Normal guibg=grey80
highlight Cursor guibg=Green
set bs=2
set autoindent
set number
set laststatus=2
set ruler
set ignorecase
set smartcase
set history=1000

filetype plugin on

colors Tomorrow-Night-Bright

nmap \| :NERDTreeFind<CR>
nmap <Bslash> :NERDTreeToggle<CR>
nmap ,/ <plug>NERDCommenterToggle
vmap ,/ <plug>NERDCommenterToggle

nnoremap Y y$

"""""""""""""""""""""""""""""
" Configure line numbers (https://jeffkreeftmeijer.com/vim-number/)
"   Absolute: cursor/insert mode/unfocused buffer
"   Relative: everywhere else
"""""""""""""""""""""""""""""
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
