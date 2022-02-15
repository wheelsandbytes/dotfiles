
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Make Vim more useful
set nocompatible

" Enable filetype plugins
filetype plugin on
filetype indent on

" Uses bash as shell and prevents PATH variable from being prefixed
set shell=bash\ --norc

" Allow backspace in insert mode
set backspace=indent,eol,start

" Hide buffers instead of closing them
set hidden

" Ignore case when searching
set ignorecase

" Show search matches while typing
set incsearch

" Search only in open folds
set fdo-=search

" Set clipboard to system
set clipboard=unnamed

" Enable mouse support
set mouse=a

" Setup powerline all the time!
set laststatus=2

" Set regexpengine to 0 (automatic switching); 
" :help 're'
set re=0

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

" Fix the cursor appearance
let &t_SI = "\<esc>[5 q"  " blinking I-beam in insert mode
let &t_SR = "\<esc>[3 q"  " blinking underline in replace mode
let &t_EI = "\<esc>[ q"  " default cursor (usually blinking block) otherwise


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'bkad/CamelCaseMotion'
Plug 'bling/vim-airline'
Plug 'cakebaker/scss-syntax.vim'
Plug 'chase/vim-ansible-yaml'
Plug 'chriskempson/base16-vim'
Plug 'corntrace/bufexplorer'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'docunext/closetag.vim'
Plug 'easymotion/vim-easymotion'
Plug 'edkolev/tmuxline.vim'
Plug 'ekalinin/Dockerfile.vim', { 'for': 'Dockerfile' }
Plug 'flazz/vim-colorschemes'
Plug 'francoiscabrol/ranger.vim'
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'heavenshell/vim-jsdoc'
Plug 'jtratner/vim-flavored-markdown'
Plug 'kchmck/vim-coffee-script'
Plug 'leshill/vim-json', { 'for': 'json' }
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-startify'
Plug 'moll/vim-node'
Plug 'mustache/vim-mustache-handlebars'
Plug 'myhere/vim-nodejs-complete'
Plug 'osyo-manga/vim-over'
Plug 'othree/html5.vim'
Plug 'othree/yajs.vim'
Plug 'qpkorr/vim-bufkill'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'terryma/vim-expand-region'
Plug 'tomasr/molokai'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'triglav/vim-visual-increment',
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'vim-scripts/Align'
Plug 'vim-scripts/Cyclecolor'
Plug 'vim-scripts/directionalWindowResizer'
Plug 'vim-scripts/gitignore.vim'
Plug 'vim-scripts/nginx.vim'
Plug 'vim-scripts/tComment'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'ryanoasis/vim-devicons' " NOTE: Needs to be loaded last!

call plug#end()

" Install plugins if this is the first run
if len(filter(split(globpath(expand(g:plug_home), '*'), '\n'), 'isdirectory(v:val)')) == 0
  PlugInstall
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User Interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_

" Show whitespace
set list

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

colorscheme monokain

" This needs to be after colorschemes >>
highlight NERDTreeDir ctermfg=Gray

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax on

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Highlight trailing whitespace
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufRead,InsertLeave * match ExtraWhitespace /\s\+$/

" Set up highlight group & retain through colorscheme changes
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files, Backups, and Undo
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" idk why the backups and swapfiles config broke my entire vim setup last
" time....
" " Centralize backups, swapfiles and undo history
" set backupdir=~/.vim/backups
" set directory=~/.vim/swaps
" if exists("&undodir")
"   set undodir=~/.vim/undo
"   endif
"
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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File-specific
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if version >= 700
  autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en_us
  autocmd FileType tex setlocal spell spelllang=en_us
endif

augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" Autoremove trailing spaces when saving the buffer
autocmd FileType ruby,c,cpp,java,php,html autocmd BufWritePre <buffer> :%s/\s\+$//e

" Adds handlebars support
au BufReadPost,BufNewFile *.handlebars,*.hbs set ft=handlebars syntax=mustache

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces
set expandtab

" Use 2 characters per indent
set shiftwidth=2
set softtabstop=2
set tabstop=2
set smartindent

" Disable maximum text width
set textwidth=0

" Turn wrapping off
" set nowrap

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Navigation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Return to last edit position when opening files
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Airline
let g:airline_theme = 'base16'
let g:airline_powerline_fonts = 1

" Ctrl-P setup
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|tmp)|(\.(swp|ico|git|svn))$'

" DevIcons
let g:webdevicons_enable_nerdtree = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:DevIconsEnableFolderPatternMatching = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:DevIconsEnableFoldersOpenClose = 1

" EasyMotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap s <Plug>(easymotion-s)
nmap s <Plug>(easymotion-s2)
let g:EasyMotion_smartcase = 1
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
map <Leader>l <Plug>(easymotion-lineforward)

" ESLint
let g:syntastic_javascript_checkers = ['eslint']

" Fugitive setup for git domains
let g:fugitive_github_domains = ['https://github.com', 'github.com']

" JSDOC
nmap <silent> <C-m> <Plug>(jsdoc)

" NERDTree
let NERDTreeIgnore=['\.pyc', '\.o', '\.class', '\.lo', 'coverage', 'node_modules', 'tmp']
let NERDTreeHijackNetrw = 0
map <C-L> :NERDTreeToggle<CR>
map <C-l> :NERDTreeFocus<CR>
" map <silent> <Leader>nt :NERDTreeToggle<CR>
" map <silent> <LocalLeader>nr :NERDTree<CR>
" map <silent> <LocalLeader>nf :NERDTreeFocus<CR>

" NERDTree General Highlighting & Style
" function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
"   exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
"   exec 'autocmd FileType nerdtree syn MATCH ' . a:extension .' #^\s\+.*'.  a:extension .'$#'
" endfunction

" call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
" call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
" call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('json', 'cyan', 'none', 'cyan', '#151515')
" call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
" call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
" call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
" call NERDTreeHighlightFile('js', 'white', 'none', '#ffa500', '#151515')
" call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
" call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', '#151515')
" call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868', '#151515')
" call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868', '#151515')
" call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868', '#151515')
" call NERDTreeHighlightFile('bashprofile', 'Gray', 'none', '#686868', '#151515')

" NERDTree Highlight Test Files
" exec 'autocmd FileType nerdtree highlight test ctermbg=none ctermfg=green guibg=green guifg=#151515'
" exec 'autocmd FileType nerdtree syn match test #^\s\+.*-test.js$#'

" Search & Replace
nnoremap <Leader>fr :call VisualFindAndReplace()<CR>
xnoremap <Leader>fr :call VisualFindAndReplaceWithSelection()<CR>

" TComment
map <silent> <LocalLeader>cc :TComment<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Trim trailing whitespace
function! Trim()
  %s/\s*$//
endfunction
command! -nargs=0 Trim :call Trim()
nnoremap <silent> <Leader>cw :Trim<CR>

" Search & Replace functions (uses vim-over)
function! VisualFindAndReplace()
    :OverCommandLine%s/
endfunction
function! VisualFindAndReplaceWithSelection() range
    :'<,'>OverCommandLine s/
endfunction

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

nnoremap <C-W>O :call MaximizeToggle()<CR>
nnoremap <C-W>o :call MaximizeToggle()<CR>
nnoremap <C-W><C-O> :call MaximizeToggle()<CR>

:" YAML specifics:
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

set foldlevelstart=20

" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" let g:ale_sign_error = '✘'
" let g:ale_sign_warning = '⚠'
" let g:ale_lint_on_text_changed = 'never'


" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
