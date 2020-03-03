"****************************************************************************
"* Auto sets
"****************************************************************************
set nohlsearch
set number
set relativenumber
set background=dark
set directory^=~/.vim/tmp//

highlight clear CursorLine
highlight clear CursorLineNR
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
nnoremap <C-N><C-N> :NERDTree<cr>
nnoremap <C-L> :noh<cr>

command Esfix :CocCommand eslint.executeAutofix
nnoremap <C-F> :Esfix<cr>

"****************************************************************************
"* Spacemacs envy
"****************************************************************************
let mapleader = " "
nnoremap <Leader>w <C-w>
nnoremap <Leader>fs :w<cr>
nnoremap <Leader>nt :NERDTree<cr>
nnoremap <Leader>fer :source ~/.vimrc<cr>
nnoremap <Leader>r :Rg <cword> wordUnderCursor

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
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'jonsmithers/vim-html-template-literals', { 'branch': 'dev' }
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'OmniSharp/omnisharp-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'pangloss/vim-javascript'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

"*****************************************************************************
"* Plugin based configs
"*****************************************************************************
"Auto close tags on these file types
let g:closetag_filenames = '*.html,*.xhtml,*.vue,*.js,*.ts'
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
let g:htl_css_templates = 1
let g:vim_markdown_folding_level = 2
