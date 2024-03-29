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

" Terminal configs
" exit insert mode
:tnoremap <Esc> <C-\><C-n>
":tnoremap <buffer><LeftRelease> <LeftRelease>i
augroup neovim_terminal
    autocmd!
    " Enter Terminal-mode (insert) automatically
    autocmd TermOpen * startinsert
	" Enter Terminal-mode when changing focus to terminal
	autocmd BufWinEnter,WinEnter * if &buftype == 'terminal' | silent! normal i | endif
	" Remap left click when focus terminal to automatically enter terminal-mode
	autocmd TermOpen * nnoremap <buffer><LeftRelease> <LeftRelease>i
    " Disables number lines on terminal buffers
    autocmd TermOpen * :set nonumber norelativenumber
augroup END


" onedark theme
colo onedark
