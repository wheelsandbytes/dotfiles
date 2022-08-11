" 21st century Vim
set nocompatible

colorscheme slate

" make le tags
command! MakeTags !ctags -R .

" LEADER
let mapleader=" "

" self-explanatory
syntax enable

filetype plugin on
filetype indent on

" useful for fuzzy file finding
set path+=**
set wildmenu

" Hide buffers instead of closing them
" set hidden

" Ignore case when searching
set ignorecase

" Show search matches while typing
set incsearch

" Set clipboard to system
set clipboard=unnamed

" Setup powerline all the time!
set laststatus=2

" Set regexpengine to 0 (automatic switching);
" :help 're'
set re=0

" moar remaps
nnoremap <leader>pv :Ex<CR>
nnoremap <leader>vt :vert term<CR>
nnoremap <leader>st :term<CR>
nnoremap <leader>bu :bunload<CR>
nnoremap <leader>fi :find<space>*
nnoremap <leader>fr :%s/<C-r>"/
nnoremap <C-S-Tab> gT
nnoremap <C-Tab> gt

" Disable arrow keys! Only use hjkl
nnoremap <Down> :echo "No arrow keys allowed!"<CR>
vnoremap <Left> :<C-u>echo "No arrow keys allowed!"<CR>
inoremap <Left> <C-o>:echo "No arrow keys allowed!"<CR>

nnoremap <Right> :echo "No arrow keys allowed!"<CR>
vnoremap <Right> :<C-u>echo "No arrow keys allowed!"<CR>
inoremap <Right> <C-o>:echo "No arrow keys allowed!"<CR>

nnoremap <Up> :echo "No arrow keys allowed!"<CR>
vnoremap <Up> :<C-u>echo "No arrow keys allowed!"<CR>
inoremap <Up> <C-o>:echo "No arrow keys allowed!"<CR>

nnoremap <Down> :echo "No arrow keys allowed!"<CR>
vnoremap <Down> :<C-u>echo "No arrow keys allowed!"<CR>
inoremap <Down> <C-o>:echo "No arrow keys allowed!"<CR>

" Set background color to dark
set background=dark

" Highlight when searching
set hlsearch

" Highlight current line
set cursorline

" Highlight too-long lines
autocmd BufRead,InsertEnter,InsertLeave * 2match OverLength /\%100v.*/
highlight OverLength ctermbg=black guibg=black
autocmd ColorScheme * highlight OverLength ctermbg=black guibg=black

" Adds - as a word separator
set iskeyword-=-

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Highlight unwanted whitespace
" set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_

" Show whitespace
" set list

" For regular expressions turn magic on
set magic

" Disables annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Set line numbers
set number

" Show ruler
set ruler

" Minimum of 5 lines above and below cursor must be visible
set scrolloff=5

" Don't show short message when starting Vim
set shortmess=atI

" Show the (partial) command as it’s being typed
set showcmd

" Show matching brackets
set showmatch

" Override 'ignorecase' if search pattern containers uppercase characters
set smartcase

" Lowers timeout length between commands
set timeoutlen=250

" Optimize for fast terminals
set ttyfast

" Enables autocomplete menu
set wildmode=longest:full
set wildmenu

" Wrap long lines
set wrap

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Use spaces
set expandtab

" Use 2 characters per indent
set shiftwidth=2
set softtabstop=2
set tabstop=2
set smartindent

" Disable maximum text width
set textwidth=0

" Highlight trailing whitespace
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufRead,InsertLeave * match ExtraWhitespace /\s\+$/

" Set up highlight group & retain through colorscheme changes
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

" Trim trailing whitespace
function! Trim()
  %s/\s*$//
endfunction
command! -nargs=0 Trim :call Trim()
nnoremap <silent> <Leader>cw :Trim<CR>

" Highlight instances word under cursor with z/ to toggle
nnoremap z/ :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
function! AutoHighlightToggle()
  let @/ = ''
  if exists('#auto_highlight')
    au! auto_highlight
    augroup! auto_highlight
    setl updatetime=4000
    echo 'Highlight current word: off'
    return 0
  else
    augroup auto_highlight
      au!
      au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    setl updatetime=500
    echo 'Highlight current word: ON'
    return 1
  endif
endfunction

" YAML specifics:
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Return to last edit position when opening files
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" Autoremove trailing spaces when saving the buffer
autocmd FileType ruby,c,cpp,java,php,html autocmd BufWritePre <buffer> :%s/\s\+$//e

if version >= 700
  autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en_us
  autocmd FileType tex setlocal spell spelllang=en_us
endif

augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" Use UTF-8 encoding
set encoding=utf8
"
" Don't add empty newlines at the end of files
set noeol
"
" Ignore certain files
set wildignore+=
  \.git,
  \*/bower_components/*,
  \*/coverage/*,
  \*/dist/*,
  \*/node_modules/*,
  \*/tmp/*,
  \*/vendor/*

" tweaks for netrw
let g:netrw_banner=0  " disable annoying banner
" let g:netrw_browse_split=4  "open in prior window
" let g:netrw_altv=1  " open splits to the right
let g:netrw_liststyle=3 " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()

