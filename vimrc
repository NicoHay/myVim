set nocompatible              " be iMproved, required
set number
syntax on
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
""""""""""""" MY PLUGINS """"""""""""""""""""""""""""""""""""""
" NERDTREE PLUGIN
Plugin 'preservim/nerdtree'

" VUEJS PLUGIN
Plugin 'posva/vim-vue'

" AIRLINE BAR
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"COLOR FONT
Plugin 'sjl/badwolf'

"CTRLP PLUGIN POUR RECHERCHE FICHIERS / DOSSIERS (CTRL + p )
Plugin 'ctrlpvim/ctrlp.vim' 

" PAIR COLOR BRACKET
" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
colorscheme badwolf

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"


" CONFIG PERSO
let g:airline_theme='badwolf'
"...
"config colorscheme
" Make the gutters darker than the background.
let g:badwolf_darkgutter = 1
" Make the tab line lighter than the background.
let g:badwolf_tabline = 3

" pour NERDTREE 

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeMinimalUI = 11111111111 
let NERDTreeDirArrows = 1
"
" KEYMAPPING
map <C-n> :NERDTreeToggle<CR>
" Go to tab by number
noremap <C-1> 1gt
noremap <C-2> 2gt
noremap <C-3> 3gt
noremap <C-4> 4gt
noremap <C-0> :tablast<cr>
