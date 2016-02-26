set nocompatible              " be iMproved, required
filetype off                  " required
set tabstop=4
set smartindent
set encoding=utf-8
" set expandtab
set shiftwidth=4
set number
set noet
set ts=4

" fix copy/paste broken indentation
" set paste

" Project Based vimrc configurations:
set exrc            " enable per-directory .vimrc files
set secure          " disable unsafe commands in local .vimrc files

" set the runtime path to include Vundle and initialize
" Bundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=/Users/iwaffles/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/iwaffles/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'terryma/vim-multiple-cursors'
"NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'honza/vim-snippets'
" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
" quick find method definitions:
NeoBundle 'Shougo/unite.vim'
" Nice outline of a file's methods within Unite.
NeoBundle 'Shougo/unite-outline'
NeoBundle 'bling/vim-airline'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'isRuslan/vim-es6'
NeoBundle 'moll/vim-node'
NeoBundle 'elzr/vim-json'
"NeoBundle 'rstacruz/vim-hyperstyle'
NeoBundleLazy 'kchmck/vim-coffee-script',    { 'autoload' : { 'filename_patterns' :[ "\.coffee$" ], }, }
NeoBundle 'dyng/ctrlsf.vim'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }
NeoBundle 'henrik/vim-reveal-in-finder'
NeoBundle 'powerline/powerline'
NeoBundle 'vim-scripts/TaskList.vim'
NeoBundle 'scrooloose/nerdcommenter'                
" Rails: 
NeoBundle 'git@github.com:tpope/vim-rails.git'
NeoBundle 'vim-ruby/vim-ruby'

" ruby path for RVM:
let g:ruby_path = system('rvm current')

NeoBundle 'git@github.com:rizzatti/dash.vim.git'


" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

let g:syntastic_javascript_checkers=['jshint']

"let g:airline_theme="murmur"
let g:airline_theme="tomorrow"
let g:airline#extensions#tabline#enabled = 1
" colorscheme allhallowseve
syntax enable
"colorscheme monokai
"colorscheme Tomorrow
"
" Solarized config: 
set background=light
let g:solarized_termcolors=256
colorscheme solarized

set nocompatible          " We're running Vim, not Vi!
  syntax on                 " Enable syntax highlighting
  filetype plugin indent on " Enable filetype-specific indenting and plugins

  " Load matchit (% to bounce from do to end, etc.)
  runtime! macros/matchit.vim

  augroup myfiletypes
    " Clear old autocmds in group
    autocmd!
    " autoindent with two spaces, always expand tabs
    autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
  augroup END

" ctrl-p settings
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_use_caching=1

" ctrl-p speed improvements found here: http://blog.patspam.com/2014/super-fast-ctrlp
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'

" Unite settings
nnoremap <C-T> :Unite outline<CR>
set gfn=Menlo:h16

" Custom Keybindings
map <C-j> :SyntasticCheck<cr>

" delete all buffers function
function! DeleteHiddenBuffers()
    let tpbl=[]
    call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
    for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
        silent execute 'bwipeout' buf
    endfor
endfunction
cabbrev bda call DeleteHiddenBuffers()

let g:netrw_liststyle=3
nnoremap <space>/ :Unite -no-quit grep:.<cr>
" nnoremap <space>/ :Unite -no-quit -auto-preview grep:.<cr>
set statusline+=%{fugitive#statusline()} 
let g:netrw_list_hide= '.DS_Store$'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
set laststatus=2 " show airline with just a single window (otherwise it won't show up unless there's a split
let g:Powerline_symbols = 'unicode'
set guifont=Droid\ Sans\ Mono\ for\ Powerline:h16
set cursorline

" Unite configuration
if executable('ag')
  " let g:unite_source_file_async_command =
  "           \ 'ag --follow --nocolor --nogroup --hidden -g ""'
  " https://github.com/ggreer/the_silver_searcher
  " Use ag in unite grep source.
  " let g:unite_source_rec_async_command = 'ag --follow --nocolor --nogroup --hidden ' .
  "       \ '--ignore ''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'' ' .
  "       \ '--ignore ''**/*.pyc'' -g ""'
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts =
		\ ' -i ' .
        \ '--line-numbers --nocolor --nogroup --hidden --ignore ' .
        \ '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'' ' .
        \ '--ignore ''**/*.pyc'''
  let g:unite_source_grep_recursive_opt = ''
elseif executable('ack-grep')
  let g:unite_source_grep_command = 'ack-grep'
  " Match whole word only. This might/might not be a good idea
  let g:unite_source_grep_default_opts = '--no-heading --no-color -a -H'
  "let g:unite_source_grep_default_opts = '--no-heading --no-color -a -w'
  let g:unite_source_grep_default_opts = '--exclude ''\.(git|svn|hg|bzr)'''
  let g:unite_source_grep_recursive_opt = ''
elseif executable('ack')
  let g:unite_source_grep_command = 'ack'
  let g:unite_source_grep_default_opts = '--no-heading --no-color -a -w'
  let g:unite_source_grep_default_opts = '--exclude ''\.(git|svn|hg|bzr)'''
  let g:unite_source_grep_recursive_opt = ''
endif

au BufNewFile,BufRead *.ejs set filetype=html

" Make VIM backspace like other apps allowing deleting indentatiion and spaces
set backspace=indent,eol,start

" CMD+s - https://apple.stackexchange.com/questions/49178/bind-cmd-s-in-vim
":map <M-s> :w<kEnter>  "Works in normal mode, must press Esc first"
":imap <M-s> <Esc>:w<kEnter>i "Works in insert mode, saves and puts back in insert mode"

" Save all Buffers
:nmap <C-s> :wa!<CR>
:imap <C-s> <Esc>:wa!<CR>a
:imap <C-s> <Esc><C-s>

"" Copy/paste
map ,c :w !pbcopy<cr><cr>
map ,d :!pbcopy<cr>
map ,p :r !pbpaste<CR>

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 2
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Enable omni completion.
autocmd FileType css,scss setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" Mustache Abbreviations
let g:mustache_abbreviations = 1
