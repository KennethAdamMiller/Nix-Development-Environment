set wrap
set showcmd
set linebreak
set showmatch " show matching brackets
set mat=2     " how many tenths of a second to blink matching branches for
set number
set nolist " list disables linebreak!
set nocompatible
set textwidth=0
set wrapmargin=0
set formatoptions+=1
set autoindent
set smartindent    " obvious...
set tabstop=2      " tell vim how many columns a tab counts for.
set shiftwidth=2   " how many columns text is indented with the reindent operations >> and <<
set expandtab      " hitting Tab in insert mode will produce the appropriate number of spaces
set softtabstop=2  " backspace after a tab should delete the shiftwidth space
set history=5000
set ruler
set so=2  " scoll offset 
cabbrev tl TlistToggle
filetype plugin indent on " used for omlet and for some other filtyping plugins

"set patchmode=.orig     -> this creates that annoying ass .orig shit for every file. bleh!
set backup
let &sh="/bin/zsh"
let Tlist_Use_Split_Window = 1 " ?
let Tlist_Process_File_Always = 1 " keep tl up to date at all times
com Tlnt NERDTree | TlistToggle " use Tlnt command to show a split pane
let Tlist_Display_Prototype = 1 " show the function protos in tl

" cscope stuff
set cst  " cscope option to search both cscope and ctags db's
let CCTreeOrientation = "rightbelow"
let CCTreeWindowVertical = 1
let CCTreeDisplayMode = 1
cabbrev CCTL CCTreeLoadDB
" for cscope.vim and CCTree:
" map csClear CscopeClear CCTreeUnloadDB
" map csGen CCTreeUnloadDB CCTreeLoadDB
" csList CscopeList CCTreeShowLoadedDBs

" Use of ~/.vimproj internals with CCTree and cscope, easytags?
" Quick generation of ~/.vimproj files from currently open files?
" if not in a vimproj, auto creation of cscope database based on certain file
  " types?

" astyle command

cabbrev GU GundoToggle<CR>
execute pathogen#infect()
"silent execute pathogen#helptags()
let gundo_preview_bottom=1
let gundo_preview_height =10
cabbrev SS ScreenShell
cabbrev SSV ScreenShellVertical
cabbrev Send ScreenSend
cabbrev Focush :call ScreenShellFocus()
cabbrev NT NERDTree
let NERDTreeShowHidden=1
let ScreenImpl="Tmux" " SS now opens a tmux pane.

" Autotags
"command ATU call AutotagsUpdate()

"Easy tags - like autotags, only better


" for VIM fugitive
autocmd BufReadPost fugitive://* set bufhidden=delete


syntax enable
set foldmethod=syntax
set foldmarker={,}
set foldenable
set foldlevel=100

let g:rainbow_operators=2
au FileType c,cpp,objc,objcpp,java call rainbow#load()

set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=3000         " How many undos
set undoreload=30000        " number of lines to save for undo

"YankRing options
let yankring_max_history             = 1000
let yankring_share_between_instances = 0
let yankring_history_dir             = "$HOME/.vim/yankhist"


"haskell plugins:
"git://github.com/bitc/vim-hdevtools.git
"https://github.com/MarcWeber/vim-addon-haskell/blob/master/doc/vim-addon-haskell.txt
