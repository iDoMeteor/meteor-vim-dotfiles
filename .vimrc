set nocompatible


" Vim make code good fun
" No mousey only keyboard
" Now type type!
"                                   - @iDoMeteor


" To use vi is to practice Zen,
" Every command is a koan,
" profound to the user,
" unintelligible to the uninitiated.
" You discover truth every time you use it.
"                                   - reddy@lion.austin.com


" Requirements (not complete):
"   node
"   node-less
"
"   Node modules:
"       Linters:
"           csslint
"           coffeelint
"           eslint
"           jshint (deprecated)
"           jslint (deprecated)
"           jsonlint
"       Formatters:
"           esformatter (not mature enough yet)
"           js-beautify (deprecated)
"           jscs
"           tidy-html5
"   Gems
"       mdl
"       // one other...hm


" ### NeoBundle Startup ###
    " :NeoBundleList       - lists configured plugins
    " :NeoBundleInstall    - installs plugins; append `!` to update or just :PluginUpdate
    " :NeoBundleSearch foo - searches for foo; append `!` to refresh local cache
    " :NeoBundleClean      - confirms removal of unused plugins; append `!` to auto-approve removal
    " :h NeoBundle

    filetype off
    if has('vim_starting')
      if &compatible
        set nocompatible               " Be iMproved
      endif
      set runtimepath+=/home/j/.vim/bundle/neobundle.vim/
    endif
    call neobundle#begin(expand('/home/j/.vim/bundle'))
    NeoBundleFetch 'Shougo/neobundle.vim'


" ### Plugins ###

NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

NeoBundle "Shougo/vimshell"
NeoBundle 'elzr/vim-json'
NeoBundle 'groenewege/vim-less'
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'gcmt/taboo.vim'
NeoBundle 'godlygeek/tabular'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'heavenshell/vim-jsdoc'
NeoBundle 'hushicai/tagbar-javascript.vim'
NeoBundle 'jlanzarotta/bufexplorer'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'lukaszkorecki/CoffeeTags'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'marijnh/tern_for_vim'
NeoBundle 'mbbill/undotree'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'myint/syntastic-extras'
NeoBundle 'othree/html5.vim'
NeoBundle 'othree/jsdoc-syntax.vim'
NeoBundle 'ramitos/jsctags'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'skammer/vim-css-color'
NeoBundle 'slava/tern-meteor'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-speeddating'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'vim-scripts/ShowMarks'
NeoBundle 'vim-scripts/sessionman.vim'
NeoBundle 'vim-scripts/sudo.vim'
NeoBundle 'vim-scripts/winmanager'
NeoBundle 'slava/vim-spacebars'

" These are either deprecated, slow, buggy, experimental,
" used on demand, or installed for real in .vim/
" NeoBundle 'FredKSchott/CoVim'
" NeoBundle 'MarcWeber/vim-addon-mw-utils'
" NeoBundle 'Shougo/neomru.vim'
" NeoBundle 'Shougo/neosnippet-snippets'
" NeoBundle 'Shougo/neosnippet.vim'
" NeoBundle 'Shougo/neossh.vim'
" NeoBundle 'Shougo/unite.vim'
" NeoBundle 'Valloric/YouCompleteMe' " Deprecated for NeoComplete
" NeoBundle 'airblade/vim-gitgutter'
" NeoBundle 'bling/vim-airline'
" NeoBundle 'bonsaiben/bootstrap-snippets'
" NeoBundle 'easymotion/vim-easymotion'
" NeoBundle 'einars/js-beautify'
" NeoBundle 'flazz/vim-colorschemes'
" NeoBundle 'haya14busa/vim-easyoperator-line'
" NeoBundle 'haya14busa/vim-easyoperator-phrase'
" NeoBundle 'honza/vim-snippets'
" NeoBundle 'idometeor/vim-less'    " Coming soon
" NeoBundle 'jamescarr/snipmate-nodejs'
" NeoBundle 'kien/ctrlp.vim' sub'd w/Unite
" NeoBundle 'maksimr/vim-jsbeautify'
" NeoBundle 'mattn/emmet-vim'
" NeoBundle 'mattn/webapi-vim'
" NeoBundle 'myhere/vim-nodejs-complete'
" NeoBundle 'nathanaelkane/vim-indent-guides'
" NeoBundle 'othree/javascript-libraries-syntax.vim'
" NeoBundle 'othree/yajs.vim' " might be the best of these
" NeoBundle 'pangloss/vim-javascript'
" NeoBundle 'raimondi/delimitMate' " drives me nuts :D
" NeoBundle 'szw/vim-ctrlspace'
" NeoBundle 'terryma/vim-multiple-cursors'
" NeoBundle 'tomtom/quickfixsigns_vim'
" NeoBundle 'tomtom/tlib_vim'
" NeoBundle 'tomtom/tskeleton_vim'
" NeoBundle 'tpope/vim-repeat'
" NeoBundle 'vim-scripts/JavaScript-Indent'
" NeoBundle 'vim-scripts/SyntaxComplete'
" NeoBundle 'vim-scripts/bash-support.vim'
" NeoBundle 'wavded/vim-stylus'
" NeoBundle 'wincent/Command-T'

call neobundle#end()
filetype plugin indent on
NeoBundleCheck

" ############# End Plugins #############




" ############# Vim Options #############
" colorsceme=myterminaldoesit
" let mapleader=' '               " mapleader is spacebar
" set scrolloff=999		        " sets impossible window padding (v center cursor)
" set autowrite		            " write when switching buffers
" set backspace=indent,eol,start
color commode
hi CursorColumn guibg=#333333 	" highlight cursor
hi cursorline guibg=#333333 	" highlight bg color of current line
let g:netrw_liststyle=3         " explorer in tree mode by default
set autoindent                  " indent it foo
set background=dark             " of course
set backup		                " keep a backup file
set backupdir=$HOME/Archives/vim  " where to keep it
set comments=sl:/*,mb:*,elx:*/
set cursorline 			        " highlight current line
set encoding=utf-8              " characters n stuff
set expandtab
set foldenable		            " turn it on
set foldmethod=syntax 	        " type of folding - syntax/indent/marker/manual/diff/expr
set guioptions-=e               " console style tabs in gvim (if u launch by accident :D)
set hidden                      " hide buffer when switching rather than close it
set history=500		            " keep X lines of non-viminfo-specified histories line history
set hlsearch
set ignorecase		            " ignores case
set incsearch		            " do incremental searching
set laststatus=2
set lazyredraw                  " for quickfixsigns
set matchpairs+=<:>
set mouse=a
set nowrap                      " wrapping kills me
set nu			                " line numbers
set omnifunc=syntaxcomplete#Complete " turn it on
set pastetoggle=<F12>
set ruler		                " show the cursor position all the time
set ruler 	" show the ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
set scrolljump=3	            " lines to scroll when cursor leaves?
set scrolloff=2		        " sets window padding (cursor moves as expected w/SJ 3)
set sessionoptions+=tabpages,globals    " to remember tab names w/sessions
set shell=/bin/bash
set shiftwidth=2
set shortmess+=filmnrxoOtT	    " abv messages, avoids 'hit enter'
set showcmd
set showmatch		            " show matching bookends
set showmode		            " show current mode
set smartcase		            " search case sensitive if search contains caps
set softtabstop=2
set statusline=%<%f\ %=\:\b%n%y%m%r%w\ %l,%c%V\ %P
set tabpagemax=100	            " max tabs to show
set timeoutlen=600              " a whole second is too long for me!
set undofile
set undodir=~/.vim/undo-history
set undolevels=10000
set undoreload=10000
set viminfo='500,\"500,:500,@500,/500,!
set visualbell                  " flash on alert
set whichwrap=b,s,h,l,<,>,[,]   "
set wildignore=*.so,*.swp,.swo,.tmp
set wildmenu		            " shows full menu
set wildmode=list:full	        " also 'full'
set writebackup	                " write backups on buffer write
syntax on


" ### Auto-Commands ###
augroup vimrcEx
    au!
    autocmd BufEnter * lcd %:p:h	" cd to file's dir
    autocmd BufEnter * let &titlestring = "[vim(" . expand("%:t") . ")]"
    autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
    " autocmd BufWritePre *.js JscsFix
    autocmd BufWritePost $MYVIMRC so $MYVIMRC
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal foldmethod=indent
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType text setlocal textwidth=80
    " au FileType javascript call JavascriptFold()
augroup END


" ### Goofy fingers hacks
command! Noh :noh


" ############# Functions #############

fun! BreakLine()
  if (mode() == 'i')
    return ((getline(".")[col(".")-2] == '{' && getline(".")[col(".")-1] == '}') ||
          \(getline(".")[col(".")-2] == '(' && getline(".")[col(".")-1] == ')'))
  else
    return 0
  endif
endfun

if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

if !exists(":JscsFix")
  function JscsFix()
      let l:winview = winsaveview()
      % ! jscs -x
      call winrestview(l:winview)
  endfunction
  command JscsFix :call JscsFix()
endif




" ############# Plugin Options #############


" ### Bash ###
let g:BASH_AuthorName   = '@iDoMeteor, aka Jason Edward White'
let g:BASH_AuthorRef    = 'iDM'
let g:BASH_Company      = 'http://iDoMeteor.com'
let g:BASH_CopyrightHolder="Jason Edward White, Marquette, MI"
let g:BASH_Email        = 'idometeor@gmail.com'
let g:sh_indent_case_labels=1               " fix case statement indents (verify)

" ### Buffer Explorer ###
" let g:bufExplorerFindActive=0             " do not go to active window
" let g:bufExplorerReverseSort=1            " reverse sort by default
" let g:bufExplorerShowUnlisted=1           " show unlisted by default
" let g:bufExplorerSplitBelow=1             " where to split
" let g:bufExplorerSplitRight=0             " where to vertical split
let g:bufExplorerDefaultHelp=0              " turn off default help
let g:bufExplorerDetailedHelp=0             " turn on detailed help
let g:bufExplorerSplitVertSize=40           " set width
let g:bufExplorerShowDirectories=1          " don't show directories in list
let g:bufExplorerShowRelativePath=1         " show relative path
let g:bufExplorerSortBy='fullpath'          " default sort order
                                            " mru, number, fullpath, extension
let g:bufExplorerSplitOutPathName=0         " don't split path/file names

" ### CoVim ###
" let CoVim_default_name = "idometeor"
" let CoVim_default_port = "31337"

" ### Emmet Options ###
" let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.vim/emmit-custom-snippets.json')), "\n"))

" ### Easy Motion ###
" let g:EasyMotion_smartcase = 1
" let g:EasyMotion_startofline = 0

" ### JsDoc ###
let g:jsdoc_allow_input_prompt=1
let g:jsdoc_additional_descriptions=1
let g:jsdoc_access_descriptions=1
let g:jsdoc_allow_shorthand=1

" ### Mustache ###
let g:mustache_abbreviations = 1

" ### Javascript Libraries Syntax ###
let g:used_javascript_libs = 'handlebars,jQuery,underscore'

" ### Tagbar ###
let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'kinds' : [
        \ 'h:Heading_L1',
        \ 'i:Heading_L2',
        \ 'k:Heading_L3'
    \ ]
\ }

" ### Multiple Cursors Options ###
" let g:multicursor_insert_maps
" let g:multicursor_normal_maps

" ### Sessionman Options ###
let g:sessionman_save_on_exit=1

" ### Show Marks ###
let showmarks_enable = 1                  " disable launch at startup
let g:showmarks_ignore_type="hprmq"

" ### Surroundings ###
let b:surround_indent = 1                 " enable automatic vim re-indenting

" ### Syntastic Options ###
"" let g:syntastic_<filetype>_checkers = ['<checker-name>']
" let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_full_redraws=0
let g:syntastic_html_tidy_exec = 'tidy5'
let g:syntastic_asm_checkers=['gcc']
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_gitcommit_checkers = ['language_check']
let g:syntastic_css_checkers=['csslint']
let g:syntastic_less_checkers=['lessc']
let g:syntastic_markdown_checkers=['mdl']
let g:syntastic_json_checkers=['jsonlint']
let g:syntastic_typescript_checkers=['tslint']
let g:syntastic_mode_map = {"mode": "passive"}
let g:syntastic_warning_symbol = "⚠"
set statusline+=%#warningmsg#
set statusline+=%*
set statusline+=%{SyntasticStatuslineFlag()}

" ### Taboo Options ###
let g:taboo_tab_format=" %N($W) %f%m"

" ### Tern Options ###
" let g:tern_show_argument_hints = 'on_move'

" ### Undotree Options ###
let g:undotree_SetFocusWhenToggle = 1       " auto-focus on open

" ### Vim Shell Options ###
" let g:vimshell_split_command = "tabnew"
let g:vimshell_prompt =  '% '
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'

" ### Winmanager Options ###
let g:winManagerWidth=40




" ### Mappings ###
" Quick tip
" map[!] <keystroke> command; with ! makes insert mode, w/o is normal mode


" ### Allish Modes ###

"    map  / <Plug>(easymotion-sn)
"    map  N <Plug>(easymotion-prev)
"    map  n <Plug>(easymotion-next)
"    map <Leader>h <Plug>(easymotion-linebackward)
"    map <Leader>j <Plug>(easymotion-j)
"    map <Leader>k <Plug>(easymotion-k)
"    map <Leader>l <Plug>(easymotion-lineforward)

" ### Insertish Modes ###

    " Buffers
        nnoremap ,b <ESC>:CommandTBuff
        nnoremap ,m <ESC>:bnext<CR>
        nnoremap ,n <ESC>:bprevious<CR>
          " Seem odd?  Try it!
          " Don't think about it, just do it!
    " Comments
        imap ,* \cs
        imap ,/ \cy
        inoremap ,cc  * ******************************************************************************/<ESC>2ba
        inoremap ,ci //
        inoremap ,co /*********************************************************************************<cr>
    " Definition lists
        inoremap ,dd <dd><cr>XXX<cr></dd><ESC>?xxx
        inoremap ,dl <dl><cr><dt><cr>XXX<cr></dt><cr><dd><cr>XXX<cr></dd><cr></dl><ESC>7k/xxx
        inoremap ,dt <dt><cr>XXX<cr></dt><ESC>?xxx
    " Meteor Events
        inoremap ,ec 'XXX .XXX': function () {<cr>},<cr>2k0/xxx
        inoremap ,ei 'XXX #XXX': function () {<cr>},<cr>2k0/xxx
        inoremap ,ev 'XXX XXX': function () {<cr>},<cr>2k0/xxx
        inoremap ,fa function () {<cr>}<ESC>O
        inoremap ,fa function XXX () {<cr>}<ESC>O
    " Headings
        inoremap ,h1 <h1>XXX</h1><ESC>?xxx
        inoremap ,h2 <h2>XXX</h2><ESC>?xxx
        inoremap ,h3 <h3>XXX</h3><ESC>?xxx
        inoremap ,h4 <h4>XXX</h4><ESC>?xxx
        inoremap ,h5 <h5>XXX</h5><ESC>?xxx
        inoremap ,h6 <h6>XXX</h6><ESC>?xxx
    " List items
        inoremap ,li <li><cr>XXX<cr></li><ESC>?xxx
        inoremap ,ol <ol><cr><li><cr>XXX<cr></li><cr></ol><ESC>?xxx
    " ECMA Objects
        inoremap ,om xxx: function () {<cr>},<ESC>k0/xxx
        inoremap ,oo xxx: {<cr>},<ESC>k0/xxx
        inoremap ,op xxx: XXX,<ESC>0/xxx
    " Spacebars
        inoremap ,sbea  {{#each XXX}}<cr>{{/if}}<esc>0k/xxx
        inoremap ,sbif  {{#if XXX}}<cr>{{/if}}<esc>0k/xxx
        inoremap ,sbife {{#if XXX}}<cr>{{else}}<cr>{{/if}}<esc>0kk/xxx
        inoremap ,sbun  {{#unless XXX}}<cr>{{/unless}}<esc>0k/xxx
        inoremap ,sbune {{#unless XXX}}<cr>{{else}}<cr>{{/unless}}<esc>0kk/xxx
    " Tabs
        inoremap ,M <ESC>:tabnext<CR>
        inoremap ,N <ESC>:tprevious<CR>
        inoremap ,t <ESC>:tabnew<CR>
        inoremap ,t <ESC>:tabnew<CR>
        inoremap ,tR <ESC>:TabooReset<CR>
        inoremap ,to <ESC>:TabooOpen<CR>
        inoremap ,tr <ESC>:TabooRename<CR>
    " Tagbar
        inoremap ,tb <ESC>:TagbarToggle<CR>
    " Tern
        inoremap ,tD <ESC>:TernDoc<CR>
        inoremap ,tR <ESC>:TernRename<CR>
        inoremap ,tT <ESC>:TernType<CR>
        inoremap ,td <ESC>:TernDef<CR>
        inoremap ,tn <Esc>:tabnext<CR>
        inoremap ,tp <Esc>:tabprev<CR>
        inoremap ,tr <ESC>:TernRefs<CR>
    " Underscore
        inoremap ,ue _.each(XXX, function (value, key) {<cr>XXX<cr>}<esc>0kk/xxx
    " Unordered list
        inoremap ,ul <ul><cr><li><cr>XXX<cr></li><cr></ul><ESC>?xxx
    " Window manager
        inoremap ,wm1 <ESC>:FirstExplorerWindow<CR>
        inoremap ,wm2 <ESC>:BottomExplorerWindow<CR>
        inoremap ,wmt <ESC>:WMToggle<CR>
    " That one thing
        inoremap <C-c> <CR><Esc>O
    " That other thing
        inoremap <expr> <CR> BreakLine() ? "<CR><ESC>O" : "<CR>"

" ### Normalish Modes ###

    " Buffers
        nnoremap ,b :CommandTBuff
        nnoremap ,m :bnext<CR>
        nnoremap ,n :bprevious<CR>
    " Editing & Misc
        nnoremap ,fc gg=G
        nnoremap ,s! :set spell!<CR>
        nnoremap ,zz :set &scrolloff=999-&scrolloff=2<CR>
        nnoremap <S-Down> ddp
        nnoremap <S-Up> ddkP
        nnoremap gV `[v`]
    " Files
        noremap ,W :w !sudo tee % > /dev/null
        nnoremap ,e :CommandT<CR>
    " Git
        nnoremap ,ga :Git add %:p<CR><CR>
        nnoremap ,gb :Git branch<Space>
        nnoremap ,gc :Gcommit -v -q<CR>
        nnoremap ,gd :Gdiff<CR>
        nnoremap ,ge :Gedit<CR>
        nnoremap ,gg :GitGutterLineHighlightsToggle<CR>
        nnoremap ,gl :silent! Glog<CR>:bot copen<CR>
        nnoremap ,gm :Gmove<Space>
        nnoremap ,go :Git checkout<Space>
        nnoremap ,gp :Ggrep<Space>
        nnoremap ,gpl :Dispatch! git pull<CR>
        nnoremap ,gpom :Gpush origin master<CR>
        nnoremap ,gps :Dispatch! git push<CR>
        nnoremap ,gr :Gread<CR>
        nnoremap ,gs :Gstatus<CR>
        nnoremap ,gt :Gcommit -v -q %:p<CR>
        nnoremap ,gw :Gwrite<CR><CR>
    " Locations
        nnoremap ,lc :lclose<CR>
        nnoremap ,ln :lnext<CR>
        nnoremap ,lo :lopen<CR>
        nnoremap ,lp :lprevious<CR>
        nnoremap ,lw :lwindow<CR>
    " Navigation
        nnoremap ,h <C-W>h
        nnoremap ,j <C-W>j
        nnoremap ,k <C-W>k
        nnoremap ,l <C-W>l
    " Plugins
        nnoremap ,pc :NeoBundleClean<CR>
        nnoremap ,pi :NeoBundleInstall %:p<CR>
        nnoremap ,pi! :NeoBundleInstall! %:p<CR>
        nnoremap ,pl :NeoBundleList<CR>
        nnoremap ,ps :NeoBundleSearch %:p<CR>
        nnoremap ,pu :NeoBundleUpdate<CR>
    " Sessions
        nnoremap ,sc :SessionClose<CR>
        nnoremap ,sd :SessionDelete<CR>
        nnoremap ,se :SessionEdit<CR>
        nnoremap ,sl :SessionList<CR>
        nnoremap ,so :SessionOpen<CR>
        nnoremap ,ss :SessionSave<CR>
        nnoremap ,ssa :SessionSaveAs<CR>
        nnoremap ,ssl :SessionShowList<CR>
    " Syntax
        nnoremap ,fs :JscsFix<CR>
        nnoremap ,jd <Plug>(jsdoc)
        nnoremap ,tD :TernDoc<CR>
        nnoremap ,tR :TernRename<CR>
        nnoremap ,tT :TernType<CR>
        nnoremap ,tb :TagbarToggle<CR>
        nnoremap ,td :TernDef<CR>
        nnoremap ,tr :TernRefs<CR>
    " Tabs
        nnoremap ,M :tabnext<CR>
        nnoremap ,N :tprevious<CR>
        nnoremap ,tn :tabnew<CR>
        nnoremap ,to :TabooOpen<CR>
        nnoremap ,tr :TabooRename<CR>
        nnoremap ,tR :TabooReset<CR>
    " Windows
        nnoremap ,ut :UndotreeToggle<CR>
        nnoremap ,wm1 :FirstExplorerWindow<cr>
        nnoremap ,wm2 :BottomExplorerWindow<cr>
        nnoremap ,wmt :WMToggle<cr>
        nnoremap ,fo :E<cr>

" ### Selectish Modes ###

    " Intuitive pasters
        vmap <S-Down> xp`[V`]
        vmap <S-Up> xkP`[V`]
    " Reselect visual block after indentation change
        vnoremap < <gv
        vnoremap > >gv

" ### Special Modes ###

"    omap / <Plug>(easymotion-tn)

" ### END ###
