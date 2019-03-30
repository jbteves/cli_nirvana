" .vimrc extension
" Heavily sourced from: https://vim.fandom.com/wiki/Example_vimrc
" Thanks vim fandom!!

"---------
" HIGHLY RECOMMENDED
"--------
" Ward off the unexpected per above link
set nocompatible

" Determine filetype from name, contents; set sane auto-indenting
filetype indent plugin on 

" Automatically indent if no file-specific indent
set autoindent

" Syntax highlighting; just do it
syntax on

" Set search casing
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks, and start of insert
set backspace=indent,eol,start

" Prevent some moves from going to first character in line
set nostartofline

" Ask if you want to save when quitting without write
set confirm

" Use visual bell instead of beeping
set visualbell

" Uncomment to allow mouse use
"set mouse=a

" Display line numbers
set number

" Use <F11> to toggle between paste/no paste
set pastetoggle=<F11>

"--------
"PREFERENCE
"--------

" Set to use spaces instead of tabs
set shiftwidth=4
set softtabstop=4
set expandtab

" Comment above and uncomment below to use tabs instead of spaces
"set shiftwidth=4
"set tabstop=4

" Wrap text at 78 characters
" Thanks to https://thoughtbot.com/blog/wrap-existing-text-at-80-characters-in-vim
" Chose 72 to give breathing room for 80-character terminals
set textwidth=78

" Jump back to last edit on file before closing
" Thanks to: https://askubuntu.com/questions/202075/how-do-i-get-vim-to-remember-the-line-i-was-on-when-i-reopen-a-file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" Highlight search
" See mappings: custom keybind <C-L> redraws with no highlight until next
" search
set hlsearch

"--------
"MAPPINGS
"--------

" Map [Ctrl]-L to turn off search highlighting until next search 
" and redraw screen
nnoremap <C-L> : nohl<CR><C-L>
