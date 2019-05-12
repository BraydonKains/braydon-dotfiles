"****************************************************************************
"* Key bindings
"****************************************************************************
inoremap <C-L> <Esc>

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
