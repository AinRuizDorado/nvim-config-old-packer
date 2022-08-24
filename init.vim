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

call plug#begin('~/.config/nvim/plugged')




" Themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" Tree
Plug 'https://github.com/scrooloose/nerdtree'


" auto read, actualiza el archivo sin tener que cerrar y abrir VIM
Plug 'djoshea/vim-autoread'

" FZF file no se que
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" Angular snipets
" Plug 'mhartington/vim-angular2-snippets'

" Prettier
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

" COC
" Plug 'neoclide/coc.nvim'

Plug 'rafamadriz/friendly-snippets'


" IDE
Plug 'easymotion/vim-easymotion'
Plug 'jremmen/vim-ripgrep'

" Terminal
Plug 'numToStr/FTerm.nvim'

" Emmet
Plug 'mattn/emmet-vim'


" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" lualine el status line de abajo mejorado
Plug 'nvim-lualine/lualine.nvim'



call plug#end()

lua require('plugins')
lua require('lsp')
let mapleader=" "

" Remaps nerd tree
nmap <Leader>tr :NERDTreeFocus<CR>
nmap <Leader>tr :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1

" Remaps FZF
" nmap <Leader>f :Files<Cr>
nmap <Leader>F :Ag<Cr>

" CMP VNIPER
imap <expr><C-l> vsnip#available(1)    ? '<Plug>(vsnip-expand)'         : '<C-l>'
smap <expr><C-l> vsnip#available(1)    ? '<Plug>(vsnip-expand)'         : '<C-l>'
imap <expr><Tab> vsnip#available(1)    ? '<Plug>(vsnip-expand-or-jump)' : '<Tab>'
smap <expr><Tab> vsnip#jumpable(1)     ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr><S-Tab> vsnip#available(-1) ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr><S-Tab> vsnip#available(-1) ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'


" lualine setup
lua << END
require('lualine').setup()
END

" Prettier
nmap <Leader>pr <Plug>(Prettier)


" easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" Basic remaps
nmap <Leader>w :w<Cr>
nmap <Leader>q :q<Cr>

tnoremap <C-r> <Cmd>lua require'FTerm'.toggle()<CR>
nnoremap <C-r> <Cmd>lua require'FTerm'.toggle()<CR>


" Coc Action config
" Remap for do codeAction of selected region
" function! s:cocActionsOpenFromSelected(type) abort
"   execute 'CocCommand actions.open ' . a:type
" endfunction
" xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
" nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@
" nmap <leader>i  <Plug>(coc-fix-current)

" let g:fzf_layout = { 'down': '40%' }

colorscheme tokyonight 
" let g:gruvbox_contrast_dark = "hard"
