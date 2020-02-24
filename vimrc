set nocompatible
filetype off
set backspace=indent,eol,start
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'w0rp/ale'

Plugin 'itchyny/lightline.vim'
Plugin 'maximbaz/lightline-ale'

" Theme
Plugin 'nightsense/cosmic_latte'
Plugin 'hzchirs/vim-material'
Plugin 'joshdick/onedark.vim'

" Vim git operation plugin
Plugin 'tpope/vim-fugitive'

Plugin 'ycm-core/YouCompleteMe'

Plugin 'majutsushi/tagbar'

Plugin 'jiangmiao/auto-pairs'

" Directories tree plugin
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Javascript support
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'

Plugin 'mxw/vim-jsx'

" Go support
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}

Plugin 'ryanoasis/vim-devicons'

call vundle#end()
filetype plugin indent on

syntax enable
set background=dark
colorscheme onedark
set termguicolors

set nu
set encoding=utf-8

set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent smartindent
autocmd FileType *html*,css,scss,sass,ruby,eruby,javascript,typescript set tabstop=2 softtabstop=2 shiftwidth=2 expandtab autoindent smartindent


"===============================
" Setup vim-go
"===============================
let g:go_template_autocreate = 0

"==============================
" key mapping
"==============================
nmap <F9> :TagbarToggle<CR>
map <F10> :NERDTreeToggle<CR>
"mapping for vim auto-pair

"================================
" Set status line and tag line!
"================================
set noshowmode
set laststatus=2
set showtabline=2
let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed      = '[No Name]'
let g:lightline#ale#indicator_checking = "\uf110 "
let g:lightline#ale#indicator_warnings = "\uf071 "
let g:lightline#ale#indicator_errors = "\uf05e "
let g:lightline#ale#indicator_ok = "\uf00c "

let g:lightline = {
            \'colorscheme': 'one',
            \'active': {
            \   'left': [['mode', 'paste'], 
            \           ['readonly', 'relativepath', 'fileformat', 'fileencoding', 'filetype'], []],
            \   'right': [['percent', 'lineinfo', 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok']]
            \},
            \'separator': {
            \   'left': "\ue0b8", 'right': "\ue0be"
            \},
            \'subseparator': {
            \   'left': "\ue0b9", 'right': "\ue0bf"
            \},
            \ 'component': {
            \   'logo': "\uf125",
            \   'lineinfo': "\ue0a1 %3l:%-2v"
            \},
            \}
let g:lightline.tabline = {
            \ 'left': [['logo'], ['tabs']],
            \ 'right':[['gitbranch', 'close']]
            \ }
let g:lightline.tabline_separator = {
            \ 'right': "\ue0ba",
            \ 'left': "\ue0bc"
            \ }
let g:lightline.tabline_subseparator = {
            \ 'right': '',
            \ 'left': ''
            \ }
let g:lightline.component_function = {
            \ 'gitbranch': 'fugitive#head'
            \ }
let g:lightline.component_expand = {
            \ 'linter_checking': 'lightline#ale#checking',
            \ 'linter_warnings': 'lightline#ale#warnings',
            \ 'linter_errors': 'lightline#ale#errors',
            \ 'linter_ok': 'lightline#ale#ok',
            \ }
let g:lightline.component_type = {
            \ 'bufferline': 'tabsel',
            \ 'linter_checking': 'middle',
            \ 'linter_warnings': 'warning',
            \ 'linter_errors': 'error',
            \ 'linter_ok': 'middle',
            \ }

"=============================
" Set Vim-GO
"=============================
let g:go_fmt_command = "goimports" 

"=============================
" Set Tab switch hotkey
"=============================
:nmap <ESC>1 1gt
:nmap <ESC>2 2gt
:nmap <ESC>3 3gt
:nmap <ESC>4 4gt
:nmap <ESC>5 5gt
:nmap <ESC>6 6gt
:nmap <ESC>7 7gt
:nmap <ESC>8 8gt
:nmap <ESC>9 9gt

