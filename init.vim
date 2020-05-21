set tabstop=2
set shiftwidth=2
set expandtab
set nowrap
set number

autocmd BufWritePre *.js Neoformat


"set cursor settings
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175

call plug#begin('~/.local/share/nvim/plugged')

  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif
  
  Plug 'dense-analysis/ale'
  Plug 'sbdchd/neoformat'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  Plug 'sheerun/vim-polyglot'
  Plug 'dracula/vim', { 'as': 'dracula' }
  
  "File searchers:
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'jremmen/vim-ripgrep'

call plug#end()

"colorscheme dracula 
let g:deoplete#enable_at_startup = 1
