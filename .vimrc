inoremap <C-L> <Esc>
set number
set softtabstop=4 
set pastetoggle=<F3>
"*****************************************************************************
"" Plug install packages
"*****************************************************************************
call plug#begin(expand('~/.vim/plugged'))
Plug 'scrooloose/nerdtree', { 'on' : 'NERDTreeToggle' }
Plug 'posva/vim-vue', { 'for' : 'vue' }
Plug 'tpope/vim-surround'
call plug#end()

