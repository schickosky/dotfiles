" Basic options.
set nocompatible
set history=700

if has("gui_running")
    colorscheme ir_black
else
    colorscheme jellybeans
endif

" Tab stuff.
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Vague extended options.
set incsearch
set number

" Programmy options.
filetype plugin on
filetype indent on
set autoread
set showmatch
syntax enable

" Status line.
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c

" Functions for status line.
function! CurDir()
    let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
    return curdir
endfunction

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    else
        return ''
    endif
endfunction
" -- Plugin Options --
"
" Clang_complete settings
let g:clang_complete_auto = 1
let g:clang_snippets      = 1
let g:clang_use_library   = 1

" MiniBufExpl settings
let g:miniBufExplMapCTabSwitchBufs = 1
