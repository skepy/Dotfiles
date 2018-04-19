" Plugins
set runtimepath+=~/.config/nvim/plugins/repos/github.com/Shougo/dein.vim

call dein#begin('~/.config/nvim/plugins')
call dein#add('~/.config/nvim/plugins/repos/github.com/Shougo/dein.vim')
" Appearance
	" Airline
	call dein#add('vim-airline/vim-airline')
	" Airline theme
	call dein#add('chrisduerr/vim-undead')
" File searching
	" NERDTree
	call dein#add('scrooloose/nerdtree')
	call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')
	call dein#add('ryanoasis/vim-devicons')
" Programming
	" Syntax highlighting
	call dein#add('sheerun/vim-polyglot')
	" Snippets
	call dein#add('Shougo/neosnippet.vim')
	call dein#add('Shougo/neosnippet-snippets')
	" Auto pair brackets
	call dein#add('Raimondi/delimitMate')
  	" Git plugin
  	call dein#add('tpope/vim-fugitive')
call dein#end()

" Install new plugins
if dein#check_install()
	call dein#install()
endif

" Key mappings
map <C-A> :NERDTreeToggle <CR>
map <C-f> :FZF <CR>
map <C-s> :w! <CR>
map <C-q> :q! <CR>
map <C-x> :wq! <CR>
map <C-g> :Gcommit <CR>

" Syntax highlighting
syntax enable

" Powerline fonts
let g:airline_powerline_fonts = 1

" Google C++ guidelines
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

" Set line numbers
set number

" Set colorscheme
colorscheme undead

" Set airline theme
let g:airine_theme='undead'

" FZF Appearance
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Cursor shape
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" Disable swapfile
set noswapfile

" Enable highlight search
set hlsearch
set incsearch

" Show filename in title
set title

" NERDTree Dir icons
let g:WebDevIconsUnicodeDecorateFolderNodes=1
let g:NERDTreeDirArrowExpandable='+'
let g:NERDTreeDirArrowCollapsible='-'
