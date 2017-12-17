" Vundle setting	
set nocompatible	" required
filetype off		" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()	" required

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" source code browser: taglist
Plugin 'taglist.vim'
" task list: tasklist
Plugin 'TaskList.vim'
" ultimate snippets: ultisnips
Plugin 'UltiSnips'
" python in vim: python-mode
Plugin 'Python-mode-klen'
" jump anywhere: easymotion
Plugin 'EasyMotion'
" undo tree: gundo
Plugin 'Gundo'


" bundles from github: username/repo
"
" color systle: solarized
Bundle 'altercation/vim-colors-solarized'
" auto-complete plugin: YouCompleteMe
Bundle 'Valloric/YouCompleteMe'
" tree explorer: nerdtree 
Bundle 'scrooloose/nerdtree'
" statusline plugin: powerline
 Bundle 'Lokaltog/vim-powerline'
" super finder: ctrlp
Bundle 'ctrlpvim/ctrlp.vim'
" class outlier view: tagbar
Bundle 'majutsushi/tagbar'
" syntax check: syntastic
Bundle 'vim-syntastic/syntastic'
" quoting/parenthesizing easily: vim-surround
Bundle 'tpope/vim-surround'
" text filtering and alignment: tabular
Bundle 'godlygeek/tabular'
" intensely orgasmic commenting: nerdcommenter
Bundle 'scrooloose/nerdcommenter'

" nerdtree config
let NERDChristmasTree=0
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
" automatically open a nerdtree if no files where specified
autocmd vimenter * if !argc() | NERDTree | endif
" close vim if the only window left open is a nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" open a nerdtree
nmap <F5> :NERDTreeToggle<cr>
" show git info in nerdtree
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" tagbar config
"
" notice: you need to install ctags first
let g:tagbar_width=35
let g:tagbar_autofocus=1
" shortcut for tagbar
nmap <F6> :TagbarToggle<CR>
" support markdown
let g:tagbar_type_markdown = {
    \ 'ctagstype': 'markdown',
    \ 'ctagsbin' : '/path/to/markdown2ctags.py',
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '|',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
    \ }

" syntastic config
let g:syntastic_check_on_open=1
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


" keymaps: nmap source target


" composing config
"
" Backspace deletes like most programs in insert mode
set backspace=2
" Show the cursor position all the time
set ruler
" Display incomplete commands
set showcmd
" Set fileencodings
set fileencodings=utf-8,bg18030,gbk,big5
filetype plugin indent on
" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
" Display extra whitespace
set list listchars=tab:»·,trail:·
" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1
" Numbers
set number
set numberwidth=5
set matchpairs+=<:>
set hlsearch
" Highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn


" powerline config
set laststatus=2 " Always display the status line
set statusline+=%{fugitive#statusline()} "  Git Hotness

" ctrlp config
"
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" use ag instead of grep, install the_silver_searcher first
if executable('ag')
    " Use Ag over Grep
    set grepprg=ag\ --nogroup\ --nocolor
    " Use ag in CtrlP for listing files.
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    " Ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif

call vundle#end()            " required

" syntax config
" notice: this need to be put after vundle#end()
"
" Javascript syntax hightlight
syntax enable
" Set syntax highlighting for specific file types
autocmd BufRead,BufNewFile *.md set filetype=markdown
" Color scheme
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0
