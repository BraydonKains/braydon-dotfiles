"****************************************************************************
"* Auto sets
"****************************************************************************
set nohlsearch
set number
set relativenumber
set background=dark
"****************************************************************************
"* Key bindings
"****************************************************************************
inoremap <C-L> <Esc>
inoremap {<cr> {<cr>}<c-o>O
inoremap [<space> []<left>
inoremap {<space> {}<left>
inoremap ({<cr> ({<cr>})<c-o>O<tab>
inoremap (<space> ()<left>
inoremap {)<cr> {<cr>});<c-o>O
nnoremap <C-N><C-T> :NERDTree<cr>
nnoremap <C-L> :noh<cr>

command Esfix :CocCommand eslint.executeAutofix
"Window movement keybindings
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-W> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

"****************************************************************************
"* Tabbing garbage
"****************************************************************************
set autoindent noexpandtab tabstop=4 shiftwidth=4
"set number
"set shiftwidth=4
"set softtabstop=4 
"set pastetoggle=<F3>
" Set special tabbing for ruby
autocmd Filetype ruby setlocal shiftwidth=2
autocmd Filetype ruby setlocal softtabstop=2
autocmd Filetype coffee setlocal shiftwidth=2
autocmd Filetype coffee setlocal softtabstop=2
"*****************************************************************************
"" Plug install packages
"*****************************************************************************
call plug#begin(expand('~/.vim/plugged'))
Plug 'scrooloose/nerdtree', { 'on' : 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'alvan/vim-closetag'
Plug 'webdesus/polymer-ide.vim', { 'do' : 'npm install' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'posva/vim-vue'
Plug 'jonsmithers/vim-html-template-literals', { 'branch': 'dev' }
Plug 'Quramy/vim-js-pretty-template'
Plug 'pangloss/vim-javascript'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'junegunn/fzf'
Plug 'klen/python-mode'
call plug#end()

"*****************************************************************************
"* Plugin based configs
"*****************************************************************************

"Auto close tags on these file types
let g:closetag_filenames = '*.html,*.xhtml,*.vue,*.js'
