set tabstop=2
set shiftwidth=2
set expandtab

let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 2

set number
set guicursor=a:blinkon100
autocmd BufWritePre *.js Neoformat

autocmd InsertEnter,InsertLeave * set cul!

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

let &t_SI .= "\e[6 q"
let &t_EI .= "\e[2 q"

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

call plug#end()

"colorscheme dracula 
let g:deoplete#enable_at_startup = 1
