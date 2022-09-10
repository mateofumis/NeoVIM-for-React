" --- Plugins List ---
"
call plug#begin()

" UI related
Plug 'dunstontc/vim-vscode-theme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

" Better Visual Guide 
Plug 'Yggdroot/indentLine'
Plug 'MaxMEllon/vim-jsx-pretty'

" File Explorer integrated
Plug 'preservim/nerdtree'

" Autocomplete
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
	let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

" Formater
Plug 'Chiel92/vim-autoformat'

" For styles/CSS
Plug 'ap/vim-css-color'

call plug#end()

" --- Configurations Part ---
"
" UI configuration
syntax on
syntax enable
" colorscheme
colorscheme dark_plus
"True Color Support if it's avaiable in terminal
if has("termguicolors")
    set termguicolors
endif
if has("gui_running")
  set guicursor=n-v-c-sm:block,i-ci-ve:block,r-cr-o:blocks
endif
set number
set relativenumber
set hidden
set mouse=a
set noshowmode
set scrolloff=10
set noshowmatch
set nolazyredraw
" Turn off backup
set nobackup
set noswapfile
set nowritebackup
" Search configuration
set ignorecase                    " ignore case when searching
set smartcase                     " turn on smartcase
" Tab and Indent configuration
set expandtab
set tabstop=4
set shiftwidth=4
" vim-autoformat
noremap <F3> :Autoformat<CR>

"NERDTree setup
"
"Changing default NERDTree arrows
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"Toggle NERDTree
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" open new split panes to right and below
set splitright
set splitbelow

" use alt+ h/l to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-l> <C-w>l

" disable coc.nvim alert at startup
let g:coc_disable_startup_warning = 1

" use  coc#refresh()
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#confirm():
      \ coc#refresh()
:set ttimeoutlen=1000 timeoutlen=0
