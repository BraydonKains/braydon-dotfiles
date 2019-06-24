"****************************************************************************
"* Auto sets
"****************************************************************************
set nohlsearch
set relativenumber
"****************************************************************************
"* Key bindings
"****************************************************************************
inoremap <C-L> <Esc>
inoremap {<cr> {<cr>}<c-o>O
inoremap [<space> []<left>
inoremap {<space> {}<left>
inoremap ({<cr> ({<cr>})<c-o>O<tab>
inoremap (<space> ()<left>
nnoremap <C-N><C-T> :NERDTree<cr>
nnoremap <C-L> :noh<cr>

"Window movement keybindings
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-W> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

"****************************************************************************
"* Tabbing garbage
"****************************************************************************
set number
set shiftwidth=4
set softtabstop=4 
set pastetoggle=<F3>
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
Plug 'posva/vim-vue', { 'for' : 'vue' }
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'
call plug#end()

"*****************************************************************************
"* Plugin based configs
"*****************************************************************************

"Auto close tags on these file types
let g:closetag_filenames = '*.html,*.xhtml,*.vue'
