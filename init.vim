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

call plug#begin('~/.config/nvim/plugged')

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
  
  "Syntax support
  Plug 'sheerun/vim-polyglot'
  Plug 'amadeus/vim-mjml'
  
  "Themes
  Plug 'dracula/vim', { 'as': 'dracula' }
  
  "File searchers:
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'jremmen/vim-ripgrep'
  Plug 'preservim/nerdtree'

call plug#end()

"theme
colorscheme dracula 

"enable deoplete auto compleate
let g:deoplete#enable_at_startup = 1

"map nerdTree to CTRL n
map <C-n> :NERDTreeToggle<CR>

"set up prettier so auto run on save
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

