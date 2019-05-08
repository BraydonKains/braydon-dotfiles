set number
set softtabstop=4 
"*****************************************************************************
"" Plug install packages
"*****************************************************************************
call plug#begin(expand('~/.vim/plugged'))
Plug 'scrooloose/nerdtree', { 'on' : 'NERDTreeToggle' }
Plug 'posva/vim-vue', { 'for' : 'vue' }
call plug#end()
