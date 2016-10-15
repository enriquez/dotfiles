" Genral
set nocompatible
syntax enable
filetype off

" mapping the jumping between splits. Hold control while using vim nav.
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-H> <C-W>h
nmap <C-L> <C-W>l

" copy to clipboard
map <C-c> "*y

" dark background
set background=dark

" nice programming font
set guifont=Inconsolata:h16

" no beep
set visualbell

" no wrap
set nowrap

" show selected area size
set showcmd

" autoindent
set autoindent

" 2 space indent
set expandtab tabstop=2 softtabstop=2 shiftwidth=2
set smarttab

" case insensitive search
set ignorecase smartcase

" highlight search
set hlsearch

" highlight first search incrementally
set incsearch

" vim swap file dir
set directory=/tmp/

" load external changes
set autoread

" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" Make backspace work in terminal
set backspace=indent,eol,start

" line numbers
set number numberwidth=2

" map CTRL+l to =>
imap <C-l> <Space>=><Space>

" map leader to :noh
nnoremap <Leader><Space> :noh<CR>

" *.md files are markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Enable matchit.vim
runtime! macros/matchit.vim

Plugin 'gmarik/Vundle.vim'

Plugin 'git://github.com/tpope/vim-surround.git'
  " old style surround key
  vmap s S

Plugin 'git://github.com/scrooloose/nerdtree.git'
  " toggle NERDTree with gt
  nmap gt :NERDTreeToggle<CR>

Plugin 'git://github.com/rking/ag.vim.git'
  nmap g/ :Ag!<space>
  nmap g* :Ag! -w <C-R><C-W><space>
  nmap gn :cnext<CR>
  nmap gp :cprev<CR>
  nmap gq :ccl<CR>

Plugin 'git://github.com/kien/ctrlp.vim.git'
  nnoremap <Leader>b :<C-U>CtrlPBuffer<CR>
  nnoremap <Leader>t :<C-U>CtrlP<CR>
 
Plugin 'git://github.com/altercation/vim-colors-solarized.git'
  let g:solarized_termtrans=1
  let g:solarized_termcolors=256
  colorscheme solarized

Plugin 'git://github.com/tpope/vim-commentary.git'

Plugin 'git://github.com/dsawardekar/portkey.git'

Plugin 'git://github.com/vim-ruby/vim-ruby.git'

Plugin 'git://github.com/tpope/vim-endwise.git'

Plugin 'git://github.com/ervandew/supertab.git'

Plugin 'mustache/vim-mustache-handlebars'
  let g:mustache_abbreviations=1

Plugin 'kchmck/vim-coffee-script'

Plugin 'git://github.com/mtscout6/vim-cjsx.git'

Plugin 'git://github.com/tpope/vim-rails.git'

Plugin 'git://github.com/tpope/vim-bundler.git'

Plugin 'git://github.com/tpope/vim-fugitive.git'
  let g:fugitive_github_domains = ['https://github.com', 'https://git.innova-partners.com']

Plugin 'git://github.com/thoughtbot/vim-rspec.git'
  let g:rspec_command = "vr bundle exec rspec {spec}"
  command Spec :call RunAllSpecs()
  command SpecFile :call RunCurrentSpecFile()
  command SpecLine :call RunNearestSpec()
  command SpecPrevious :call RunLastSpec()

  nnoremap <Leader>s :call RunNearestSpec()<CR>
  nnoremap <Leader>f :call RunCurrentSpecFile()<CR>
  nnoremap <Leader>l :call RunLastSpec()<CR>

Plugin 'git://github.com/godlygeek/tabular.git'

filetype plugin indent on

set synmaxcol=300
set re=1
