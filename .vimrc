"****************************************************************************
"* Auto sets
"****************************************************************************
set nohlsearch
set number
set relativenumber
set background=dark

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

"****************************************************************************
"* Spacemacs envy
"****************************************************************************
let mapleader = " "
nnoremap <Leader>w <C-w>
nnoremap <Leader>fs :w<cr>
nnoremap <Leader>nt :NERDTree<cr>
nnoremap <Leader>fer :source ~/.vimrc<cr>

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
Plug 'python-mode/python-mode'
Plug 'OmniSharp/omnisharp-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-dispatch'
Plug 'editorconfig/editorconfig-vim'
call plug#end()

"*****************************************************************************
"* Omnisharp configs
"*****************************************************************************
filetype indent plugin on
let g:OmniSharp_server_stdio = 1
set previewheight=5
let g:OmniSharp_highlight_types = 3
set completeopt=longest,menuone,preview
augroup omnisharp_commands
    autocmd!

    " Show type information automatically when the cursor stops moving
    autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

    " The following commands are contextual, based on the cursor position.
    autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>

    " Finds members in the current buffer
    autocmd FileType cs nnoremap <buffer> <Leader>fm :OmniSharpFindMembers<CR>

    autocmd FileType cs nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>tt :OmniSharpTypeLookup<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>dc :OmniSharpDocumentation<CR>
    autocmd FileType cs nnoremap <buffer> <C-\> :OmniSharpSignatureHelp<CR>
    autocmd FileType cs inoremap <buffer> <C-\> <C-o>:OmniSharpSignatureHelp<CR>

    " Navigate up and down by method/property/field
    autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
    autocmd FileType cs nnoremap <buffer> <C-j> :OmniSharpNavigateDown<CR>

    " Find all code errors/warnings for the current solution and populate the quickfix window
    autocmd FileType cs nnoremap <buffer> <Leader>cc :OmniSharpGlobalCodeCheck<CR>

	" Running tests
    autocmd FileType cs nnoremap <buffer> <Leader>rt :OmniSharpRunTest<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>ra :OmniSharpRunTestsInFile<CR>
augroup END

" Contextual code actions (uses fzf, CtrlP or unite.vim when available)
nnoremap <Leader><Space> :OmniSharpGetCodeActions<CR>
" Run code actions with text selected in visual mode to extract method
xnoremap <Leader><Space> :call OmniSharp#GetCodeActions('visual')<CR>

" Rename with dialog
nnoremap <Leader>nm :OmniSharpRename<CR>
nnoremap <F2> :OmniSharpRename<CR>
" Rename without dialog - with cursor on the symbol to rename: `:Rename newname`
command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")

nnoremap <Leader>cf :OmniSharpCodeFormat<CR>

" Start the omnisharp server for the current solution
nnoremap <Leader>ss :OmniSharpStartServer<CR>
nnoremap <Leader>sp :OmniSharpStopServer<CR>

nnoremap <C-B> :!msbuild<CR>

"*****************************************************************************
"* Plugin based configs
"*****************************************************************************
"Auto close tags on these file types
let g:closetag_filenames = '*.html,*.xhtml,*.vue,*.js,*.ts'
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
