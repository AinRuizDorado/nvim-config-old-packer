set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
set ruler
set encoding=utf-8
set showmatch
set relativenumber
set smartindent
set tabstop=2
set expandtab
set shiftwidth=2

call plug#begin('~/.config/nvim/plugged')


" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" Treesitter
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}


" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['html'] }


call plug#end()

lua require('plugins')
lua require('lsp')
let mapleader=" "
nmap <Leader>py <Plug>(Prettier)

" Remaps nerd tree
nmap <Leader>tr :NERDTreeFocus<CR>
nmap <Leader>tr :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1

" CMP VNIPER
imap <expr><C-l> vsnip#available(1)    ? '<Plug>(vsnip-expand)'         : '<C-l>'
smap <expr><C-l> vsnip#available(1)    ? '<Plug>(vsnip-expand)'         : '<C-l>'
imap <expr><Tab> vsnip#available(1)    ? '<Plug>(vsnip-expand-or-jump)' : '<Tab>'
smap <expr><Tab> vsnip#jumpable(1)     ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr><S-Tab> vsnip#available(-1) ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr><S-Tab> vsnip#available(-1) ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'


" easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" Basic remaps
nmap <Leader>w :w<Cr>
nmap <Leader>q :q<Cr>

