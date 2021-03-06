" Indent Config
set ts=2
set sw=2
set bs=2

set cindent
set autoindent
set smarttab
set expandtab
filetype plugin on
filetype plugin indent on

" Color Configs
syntax on
set t_Co=256

" Fold Configs
set nofoldenable
set foldmethod=indent
set foldnestmax=3

" Vim-only configs (not vi)
set nocompatible
set nobackup
set nowritebackup
set guioptions-=m
set statusline=%<%f\ %h%m%r%=%-20.(line=%l,col=%c%V,totlin=%L%)\%h%m%r%=%-40(,%n%Y%)\%P
set laststatus=2

" Annoying bells!
set novisualbell
set noerrorbells

set showmatch
set mat=3

set ruler
set nu
set nowrap

set timeoutlen=50

set cursorline
set mouse=a

set wildmode=list:longest
set wildmenu
set wildignore=*.o,*.obj,*~,*.png,*.jpg,*.gif,*.db

augroup filetypedetect
  " Tmplates
  au BufNewFile *.html  0r ~/.vim/templates/html/html5
  au BufNewFile *.php   0r ~/.vim/templates/php
  au BufNewFile *.sh    0r ~/.vim/templates/bash
  au BufNewFile *.js    0r ~/.vim/templates/js
  au BufNewFile *.rb    0r ~/.vim/templates/ruby
  " Filetype
  autocmd BufWritePost .vimrc source %
  au BufRead,BufNewFile *.js       setf jquery
  au BufRead,BufNewFile .conkyrc   setf conkyrc
  au BufRead,BufNewFile README     setf readme
  au BufRead,BufNewFile bmpanel2rc setf bmpanel2
  au BufRead,BufNewFile *.mkd      setf mkd
  au BufRead,BufNewFile *.markdown setf mkd
  au BufRead,BufNewFile *.mustache setf mustache
  au BufRead,BufNewFile *.vala            setfiletype vala
  au BufRead,BufNewFile *.vapi            setfiletype vala
  au BufRead *.vala set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
  au BufRead *.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m

  " Vala Specific
  let vala_comment_strings = 1
  let vala_space_errors = 1
  let vala_no_tab_space_error = 1
augroup END

" === HOTKEYS
" Make <c-l> clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>
" File Finder text-mate styley
nnoremap <c-f> :FuzzyFinderTextMate<CR>
let g:fuzzy_ignore = "*.jpg;*.png;*.gif;*.mid;*.mp3;*.ogg;*.ttf;*.otf;*~;.*;*.db;.git;*.psd"
" Tab Navigation
nnoremap <M-Up> :tabnext<CR>
nnoremap <M-Down> :tabprevious<CR>
" Nerd Tree!
nnoremap <silent><C-E> :NERDTreeToggle<CR>
" Tab navigation
map <silent><A-Right> :tabnext<CR>
map <silent><A-Left> :tabprevious<CR>
map <silent><C-N> :tabnew .<CR>
map <silent><C-Tab> :tabnext<CR>
" Hashes and arrows
imap <C-l> <Space>=><Space>
imap <C-a> ->
" Other mini-snippets
imap <C-k> <%=<Space><Space>%><Left><Left><Left>
imap <C-j> <%<Space><Space>%><Left><Left><Left>
imap <C-p> <?php<Space><Space>?><Left><Left><Left>

" Keep Yourself Sane
cab Wq wq
cab wQ wq
cab Q q
cab W w
cab X x

" Showing trails and tabs
set list
set listchars=tab:¬·,trail:·

vnoremap (  <ESC>`>a)<ESC>`<i(<ESC>
vnoremap )  <ESC>`>a)<ESC>`<i(<ESC>
vnoremap {  <ESC>`>a}<ESC>`<i{<ESC>
vnoremap }  <ESC>`>a}<ESC>`<i{<ESC>
vnoremap "  <ESC>`>a"<ESC>`<i"<ESC>
vnoremap '  <ESC>`>a'<ESC>`<i'<ESC>
vnoremap `  <ESC>`>a`<ESC>`<i`<ESC>
vnoremap [  <ESC>`>a]<ESC>`<i[<ESC>
vnoremap ]  <ESC>`>a]<ESC>`<i[<ESC>

" ragtag
inoremap <M-o> <Esc>o
inoremap <C-j> <Down>
let g:ragtag_global_maps = 1
