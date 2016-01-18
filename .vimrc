:colorscheme elflord
:syntax on
:set autoindent
:set expandtab
:set smartcase
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set textwidth=0
:set autoindent
:set wrap
:set wrapscan
:set wildmenu
:set showmatch
:set number
:set ruler
:set list
:set listchars=tab:>-,extends:<,trail:-,eol:<
:set laststatus=2
:set showcmd
:set nobackup
:set writebackup

if has('vim_starting')
  set nocompatible               " Be iMproved

	  set runtimepath+=~/.vim/bundle/neobundle.vim/
	  endif

	  " Required:
	  call neobundle#begin(expand('~/.vim/bundle/'))

	  " Required:
	  NeoBundleFetch 'Shougo/neobundle.vim'

	  NeoBundle 'Shougo/unite.vim'
	  NeoBundle 'Shougo/neomru.vim'
	  NeoBundle 'scrooloose/nerdtree'
      NeoBundle 'tpope/vim-rails'
      NeoBundle 'tpope/vim-fugitive'
      NeoBundle 'tyru/caw.vim.git'
      NeoBundle 'tomtom/tcomment_vim'
      
      nnoremap s <Nop>
      nnoremap sj <C-w>j
      nnoremap sk <C-w>k
      nnoremap sl <C-w>l
      nnoremap sh <C-w>h
      nnoremap sJ <C-w>J
      nnoremap sK <C-w>K
      nnoremap sL <C-w>L
      nnoremap sH <C-w>H
      nnoremap sn gt
      nnoremap sp gT
      nnoremap sr <C-w>r
      nnoremap s= <C-w>=
      nnoremap sw <C-w>w
      nnoremap so <C-w>_<C-w>|
      nnoremap sO <C-w>=
      nnoremap sN :<C-u>bn<CR>
      nnoremap sP :<C-u>bp<CR>
      nnoremap st :<C-u>tabnew<CR>
      nnoremap sT :<C-u>Unite tab<CR>
      nnoremap ss :<C-u>sp<CR>
      nnoremap sv :<C-u>vs<CR>
      nnoremap sq :<C-u>q<CR>
      nnoremap sQ :<C-u>bd<CR>
      nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
      nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>

      call neobundle#end()

	  " Required:
	  filetype plugin indent on

	  NeoBundleCheck
