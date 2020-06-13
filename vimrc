" My vimrc file based on Bram Moolenaar's example vimrc and the vimrc provided by
" MIT's Missing Semester (2020): <missing.csail.mit.edu/2020/editors/>
" 
" For more resources on Vim, Vimrc and Vimscript, I'd recommend:
"	* The Vimtutor: If you have Vim installed (you probably do), type "vimtutor" 
"		into the terminal
"	* MIT's Missing Semester lecture on editors: <missing.csail.mit.edu/2020/editors>
"	* Learn Vimscript the Hard Way: <https://learnvimscriptthehardway.stevelosh.com>
"
" Maintainer: Jarod Sagendorph <jarodsagendorph@gmail.com>
" Last Change: 2020 Jun 13

"
" Basic Formatting
"
set nocompatible

" Disable default Vim startup message (incase you run just "vim")
set shortmess+=I

" Show relative line numbers. The number on the current line is the "true" line number
" and all other lines are numbered relative to the current line
set number
set relativenumber

" Turn on syntax highlighting
syntax on

" Sets tabs to be 2 spaces and allows autoindent
set tabstop=4
set autoindent
" Set highlighted search
set hls

" Always show status line at the bottom
set laststatus=2

" Disable audible/visual error bells (shout out to MIT, these bells are the most worst
" part of Vim!)
set noerrorbells visualbell t_vb=

"
" Mappings and key functionalities
"
" Fix backspace functionality (ex, lets you use backspace before insertion point i and
" lets you backspace over anything)
set backspace=indent,eol,start

" All lower-case searches are case-insensitive, but any searches containing capital
" letters become case sensitive.
set ignorecase
set smartcase

" Unbind normal Q (puts you in Ex mode, I still don't fully understand what that is or
" why it's useful)
nmap Q <nop>

" Enable mouse support because I'm weak
set mouse+=a

" Auto-Close Brackets
"
" (I can see this getting messy, but we'll give it a try) Automatically closes any
" brackets, parentheses, and curly braces that you type (That is, typing [, (, or {
" in Insert Mode will generate a corresponding ], ), or } respectively).
" NOTE: I've decided not to auto-close < due to it's use as the less-than operator
inoremap ( ()<esc>i
inoremap [ []<esc>i
inoremap { {}<esc>i

"
" Quick Edit Mappings
"
" If you think of something to add to your Vimrc, you can quickly open in split view
" using "-ev" in normal mode. After saving edits, you can use "-sv" to source the file
" so that the changes may take effect.
let mapleader = "-"
nnoremap <leader>ev :split ~/.vimrc<cr>
nnoremap <leader>sv :source ~/.vimrc<cr>
