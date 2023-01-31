" neovim/vim
set tabstop=4
set shiftwidth=0
set number
set relativenumber

" plugins
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'joshdick/onedark.vim'
call plug#end()

" airline
let g:airline_powerline_fonts = 1

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>

nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-f> :NERDTreeFind<CR>
" Mirror the NERDTree before showing it. This makes it the same on all tabs.
"nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>
" Start NERDTree and leave the cursor in it.
"autocmd VimEnter * NERDTree
" Start NERDTree and put the cursor back in the other window.
"autocmd VimEnter * NERDTree | wincmd p

" onedark theme
colo onedark