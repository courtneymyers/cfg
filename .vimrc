""" Excellent resources used for setting many of the settings below:
" https://github.com/amix/vimrc
" http://learnvimscriptthehardway.stevelosh.com/chapters/17.html
" http://vimcasts.org/



""" Vim-Plug managed plugins
" (list plugins and install from Vim with :PlugInstall)
" (update plugins from Vim with :PlugUpdate. View diff with :PlugDiff)
" (uninstall plugins by removing them below, and from Vim running :PlugClean)
call plug#begin('~/.vim/bundle')
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'sheerun/vim-polyglot'
Plug 'easymotion/vim-easymotion'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
call plug#end()

" Configure lightline plugin to display current git branch via fugitive plugin
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" Hide '-- INSERT --' status, as lightline plugin displays it
set noshowmode

" Change color scheme
colorscheme onedark

" Increase update time, so gitgutter plugin is more responsive (default: 4000)
set updatetime=250

" Automatically open NERDTree when Vim opens
" autocmd vimenter * NERDTree

" Map 'Ctrl n' to toggle NERDTree
nmap <C-n> :NERDTreeToggle<CR>

" Map 'Ctrl p' to toggle FZF
nmap <C-p> :FZF<CR>



" Turn off auto backups
set noswapfile
set nobackup
set nowb

" Set number of lines above and below the cursor
set scrolloff=100

" Enable the wildmenu (shown in tab completion)
set wildmenu

" Show current cursor position
set ruler

" Give more space for displaying status line messages
" set cmdheight=2

" Opening a new file hides current file, instead of closing it
" (View open files with :ls and then :b[N], where N is buffer number)
set hidden

" Allow backspacing over everything in insert mode
" (macOS sets this, but explicitly setting here for cross-OS compat)
set backspace=indent,eol,start

" Navigate to next line when at end of line
set whichwrap+=<,>,h,l

" Ignore case when searching...
set ignorecase

" ...except when the pattern contains an uppercase letter
set smartcase

" Highlight all search matches
set hlsearch

" Move cursor to first matched string as you type
set incsearch

" Buffer screen updates instead of updating all the time
set lazyredraw

" Show matching brackets as you close them
set showmatch

" Blink matched brackets for (2) tenths of a second
set mat=2

" Enable syntax highlighting
syntax on

" Ensure encoding is set to utf8 and file types are Unix
set encoding=utf8
set ffs=unix,dos,mac

" Ensure tab indents go to next indent level (if in between tab indent levels)
set smarttab

" Use spaces instead of tabs
set expandtab

" Set default tab width to 4 spaces
set shiftwidth=4
set softtabstop=4
set tabstop=4

" If Vim was compiled with autocommands
if has("autocmd")
  " Enable filetype detection
  filetype plugin on

  " Enable omnicompletion
  set omnifunc=syntaxcomplete#Complete

  " Strict language specific indentation settings
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  " Style-guide language specific indentation settings
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
endif

" Enable soft wrap (display long text strings on multiple lines)
set wrap
set linebreak

" Enable auto indenting
set autoindent
set smartindent

" Always show the status line
set laststatus=2

" Vertical split window down
set splitbelow

" Horizontal split window right
set splitright

" Format the status line
set statusline=\              " (space)
set statusline+=%F            " Full path to file
set statusline+=%=            " (align everything that follows to the right)
set statusline+=%l            " Current line
set statusline+=:             " :
set statusline+=%c            " Current column
set statusline+=\             " (space)
set statusline+=/             " /
set statusline+=\             " (space)
set statusline+=%L            " Total lines
set statusline+=\             " (space)

" Display typed characters in the status line
" set showcmd

" Show title in terminal window
set title

" Clear terminal title upon exiting Vim
set titleold=

" Show line numbers
set number

" Highlight line the cursor is on
set cursorline

" Show hidden characters
set listchars=eol:¬,space:·,tab:▸\ ,trail:~,extends:>,precedes:<
set list

" Shortcut to toggle `set list`
nmap <leader>l :set list!<CR>

" Enable spell checking
" set spell

" Enable completion for words as well, but only if spelling is enabled
set complete+=kspell

" Enable mouse (easier scrolling)
set mouse=a
