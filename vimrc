" Pathogen Example
call pathogen#infect()
syntax on
filetype plugin indent on

" Vimfiles Stuff
" https://github.com/crahles/vimfiles/blob/master/vimrc 

"let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'", '#{': '}'}
"let g:AutoCloseProtectedRegions = ["Character"]


" ---------------------------------------------------------------------------
" General (vimfiles)
" ---------------------------------------------------------------------------

let mapleader = ","
let maplocalleader = ",,"
"set modelines=0 " disables set cmd
set history=1000
set nobackup
set nowritebackup
" set noswapfile
syntax enable 
set autoread

" ---------------------------------------------------------------------------
" UI
" ---------------------------------------------------------------------------

set title
"set encoding=utf-8
set scrolloff=3
set autoindent
set smartindent
set showmode
set showcmd
"set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline " Will make screen redrawing slower
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number
set norelativenumber
"set undofile

" Auto adjust window sizes when they become current
"set winwidth=84
"set winheight=5
"set winminheight=5
"set winheight=999

set splitbelow splitright

if has('mouse')
  set mouse=a
endif

" set indent guide to show 1 char width guide beginning at 2 level
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" ---------------------------------------------------------------------------
" Themes
" ---------------------------------------------------------------------------


" Solarized Theme
" set background=dark
" colorscheme solarized


if has("gui_running")
  set background=light
else
  set background=dark
endif



" ---------------------------------------------------------------------------
" Text Formatting
" ---------------------------------------------------------------------------

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set nowrap
set textwidth=79
set formatoptions=n

" check to make sure vim has been compiled with colorcolumn support
" before enabling it
if exists("+colorcolumn")
  set colorcolumn=80
endif



" ---------------------------------------------------------------------------
" Mappings
" ---------------------------------------------------------------------------

" commenting
" searching for / will be impossible without escape or waiting
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>


" Searching / moving
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
" set gdefault " global substitution by default

" Press F5 to toggle GUndo tree
nnoremap <F5> :GundoToggle<CR>

" Press CTRl-F12 like in intelliJ to open the tagbar
nnoremap <C-F12> :TagbarOpenAutoClose<CR>


" ---------------------------------------------------------------------------
" GnomeTerminal
" ---------------------------------------------------------------------------

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif



" ---------------------------------------------------------------------------
" Supertab
" ---------------------------------------------------------------------------

" remap tab -> <c-space>
"let g:SuperTabMappingForward = '<nul>'
"let g:SuperTabMappingBackward = '<s-nul>'
"
"if has("gui_running")
"  let g:SuperTabMappingForward = '<c-space>'
"  let g:SuperTabMappingBackward = '<s-c-space>'
"endif

" Chaining isn't working properly when the plugin is using complete_add()
" instead of returning a list of entrys
autocmd FileType *
    \ if &omnifunc != '' |
    " \   call SuperTabChain(&omnifunc, '<c-x><c-p>') |
    " \   call SuperTabSetDefaultCompletionType('<c-x><c-u>')  |
    \   call SuperTabSetDefaultCompletionType('<c-x><c-o>') |
    \ elseif &dictionary != '' |
    " \   call SuperTabChain(&omnifunc, '<c-x><c-p>') |
    " \   call SuperTabSetDefaultCompletionType('<c-x><c-u>')  |
    \   call SuperTabSetDefaultCompletionType('<c-x><c-k>') |
    \ else |
    \   call SuperTabSetDefaultCompletionType('<c-x><c-p>') | 
    \ endif



" ---------------------------------------------------------------------------
" Markdown
" ---------------------------------------------------------------------------

let g:vim_markdown_folding_disabled=1

