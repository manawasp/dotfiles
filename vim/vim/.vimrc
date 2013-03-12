" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on
:colorscheme xoria256

call pathogen#infect()

filetype plugin indent on

set encoding=utf-8
set laststatus=2

" NERDTree aptitude
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

set title
set nu
set nocompatible		" Breaks compatibility with original vi
set history=100			" Lines of command history
set showcmd			" Show incomplete commands
set nohlsearch			" Don't highlight searched-for phrases
set incsearch			" Start search while typing
set list			" Show special chars
set listchars=tab:··,trail:»
set softtabstop=8
set shiftwidth=2
set tabstop=8
set tabpagemax=15
set backspace=indent,eol,start	" Allow backspace in insert mode

" auctoclosebrackets
inoremap ( ()<Left>
inoremap (; ();
inoremap " ""<Left>
inoremap { {}<Left>
inoremap [ []<Left>

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" tabs
map <S-T>		<ESC>:tabnew<CR>
map <S-Left>		<ESC>:tabprevious<CR>
map <S-Right>		<ESC>:tabnext<CR>
map <S-M>		<ESC>:NERDTreeToggle<CR>
map <C-X>		<ESC>:wq<CR>

au BufNewFile {*.c{,++,pp}} call Epi_CHeader_Insert()
au BufNewFile {*.h{,h}} call Epi_CHHeader_Insert()
au BufWritePre {*.{c{,c,++,pp},h{,h}},Makefile} call UpdateHeaderDate()
