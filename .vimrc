"****************************************************************************
"* Auto sets
"****************************************************************************
set nohlsearch
set number
set relativenumber
set background=dark
set signcolumn=yes

if exists('g:fvim_loaded')
	set guifont=Fira\ Code:h15
    colorscheme gruvbox

    FVimFontLigature v:true
    
    let g:NERDTreeDirArrows = 1
    let g:NERDTreeGitStatusUseNerdFonts = 1
    let g:airline_powerline_fonts = 1
endif

set encoding=utf-8

"****************************************************************************
"* Key bindings
"****************************************************************************
inoremap <C-L> <Esc>
inoremap {<cr> {<cr>}<c-o>O
inoremap [<space> []<left>
inoremap {<space> {}<left>
inoremap {{<space> {{<space><space>}}<left><left><left>
inoremap ({<cr> ({<cr>})<c-o>O<tab>
inoremap (<space> ()<left>
inoremap {)<cr> {<cr>});<c-o>O

nnoremap <C-L> :noh<cr>

tnoremap <Esc> <C-\><C-N>
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"****************************************************************************
"* Commands
"****************************************************************************
command Esfix :CocCommand eslint.executeAutofix
command JsonFormat :%!python -m json.tool

autocmd Filetype javascript nnoremap <C-F> :Esfix<cr>
autocmd Filetype json nnoremap <C-F> :JsonFormat<cr>

"****************************************************************************
"* Spacemacs envy
"****************************************************************************
let mapleader = " "

"Window stuff
nnoremap <Leader>w <C-w>
nnoremap <Leader>ws :vsp<cr>
nnoremap <Leader>wi :sp<cr>
nnoremap <Leader>wt :tabnew<cr>

nnoremap <Leader>fs :w<cr>
nnoremap <Leader>nt :NERDTreeToggle<cr>
nnoremap <Leader>fer :source ~/.vimrc<cr>
nnoremap <Leader>r :<C-u>registers<CR>:normal! "p<Left>
nnoremap <Leader>ff :Rg <cword><cr>
nnoremap <Leader>p :set paste!<cr>


"****************************************************************************
"* Tabbing garbage
"****************************************************************************
set autoindent expandtab tabstop=4 shiftwidth=4
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
Plug 'preservim/nerdtree', { 'on' : 'NERDTreeToggle' }
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
" Plug 'pangloss/vim-javascript'
Plug 'yuezk/vim-js'
Plug 'fatih/vim-go'
Plug 'posva/vim-vue'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

"*****************************************************************************
"* Plugin based configs
"*****************************************************************************
"Auto close tags on these file types
let g:closetag_filenames = '*.html,*.xhtml,*.vue,*.js,*.ts'
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
let g:htl_css_templates = 1

let g:vim_markdown_folding_level = 2
autocmd Filetype markdown let b:coc_suggest_disable = 1

let g:ctrlp_map = '<c-p>'
let g:ctrp_custom_ignore = '\v[\/]\.(git|node_modules)$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
