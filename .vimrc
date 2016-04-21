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
:set listchars=tab:>-,extends:<,trail:-
:set laststatus=2
:set showcmd
:set nobackup
:set writebackup
:set clipboard=unnamed,autoselect
:set hlsearch
:set incsearch

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
      NeoBundle 'tpope/vim-rails'
      NeoBundle 'tpope/vim-fugitive'
      NeoBundle 'tyru/caw.vim.git'
      NeoBundle 'tomtom/tcomment_vim'
      NeoBundle 'itchyny/lightline.vim'
      NeoBundle 'nathanaelkane/vim-indent-guides'
      NeoBundle 'marijnh/tern_for_vim'
      NeoBundle 'Shougo/neosnippet.vim'
      NeoBundle 'Shougo/neosnippet-snippets'
      NeoBundle 'jelera/vim-javascript-syntax'
      NeoBundle 'tyru/open-browser.vim'
      NeoBundle 'kannokanno/previm'

      NeoBundle 'Shougo/neocomplcache'
      " Disable AutoComplPop.
      let g:acp_enableAtStartup = 0
      " Use neocomplcache.
      let g:neocomplcache_enable_at_startup = 1
      " Use smartcase.
      let g:neocomplcache_enable_smart_case = 1
      " Set minimum syntax keyword length.
      let g:neocomplcache_min_syntax_length = 3
      let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

      " Define dictionary.
      let g:neocomplcache_dictionary_filetype_lists = {
                  \ 'default' : ''
                  \ }

      " Plugin key-mappings.
      imap <C-k> <Plug>(neosnippet_expand_or_jump)
      smap <C-k> <Plug>(neosnippet_expand_or_jump)
      inoremap <expr><C-g>     neocomplcache#undo_completion()
      inoremap <expr><C-l>     neocomplcache#complete_common_string()
      " SuperTab like snippets behavior.
      imap <expr><TAB> neosnippet#expandable() <Bar><bar> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
      smap <expr><TAB> neosnippet#expandable() <Bar><bar> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : \<TAB>"
      " For snippet_complete marker.
      if has('conceal')
          set conceallevel=2 concealcursor=i
      endif

      " Recommended key-mappings.
      " <CR>: close popup and save indent.
      inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
      function! s:my_cr_function()
          return neocomplcache#smart_close_popup() . "\<CR>"
      endfunction
      " <C-h>, <BS>: close popup and delete backword char.
      inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
      inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
      inoremap <expr><C-y>  neocomplcache#close_popup()
      inoremap <expr><C-e>  neocomplcache#cancel_popup()   

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
      nnoremap sf :<C-u>Unite file<CR>

      call neobundle#end()

	  " Required:
	  filetype plugin indent on

	  NeoBundleCheck
