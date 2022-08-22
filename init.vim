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

call plug#begin()




" Themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

" Tree
Plug 'https://github.com/scrooloose/nerdtree'


" auto read, actualiza el archivo sin tener que cerrar y abrir VIM
Plug 'djoshea/vim-autoread'

" FZF file no se que
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'


" Prettier
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

" COC
" Plug 'neoclide/coc.nvim'



" IDE
Plug 'easymotion/vim-easymotion'
Plug 'jremmen/vim-ripgrep'
" Emmet
Plug 'mattn/emmet-vim'

call plug#end()

lua require('plugins')
lua require('lsp')
let mapleader=" "

" Remaps nerd tree
nmap <Leader>t :NERDTreeFocus<CR>
nmap <Leader>t :NERDTreeToggle<CR>

" Remaps FZF
nmap <Leader>f :Files<Cr>
nmap <Leader>F :Ag<Cr>



" Prettier
nmap <Leader>pr <Plug>(Prettier)


" easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" Basic remaps
nmap <Leader>w :w<Cr>
nmap <Leader>q :q<Cr>



" Coc Action config
" Remap for do codeAction of selected region
" function! s:cocActionsOpenFromSelected(type) abort
"   execute 'CocCommand actions.open ' . a:type
" endfunction
" xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
" nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@
" nmap <leader>i  <Plug>(coc-fix-current)

let g:fzf_layout = { 'down': '40%' }

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
