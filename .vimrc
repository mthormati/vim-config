set nocompatible              " be iMproved, required
filetype off                  " required

" Line indentations
set ts=2 sw=2 et
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" Line numbers on by default
set number

" Line number highlight
highlight LineNr ctermfg=grey 

" Remap window movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Remap deleting without copying
nnoremap <leader>d "_d
xnoremap <leader>d "_d


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set completeopt-=preview
let g:user_emmet_leader_key='<C-Z>'
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
  autocmd VimEnter * NERDTree
  autocmd VimEnter * wincmd p

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
  let g:airline_theme='luna'
  set encoding=utf-8
  set t_Co=256
  let g:airline_powerline_fonts=1

Plugin 'easymotion/vim-easymotion'
  " Easy motion configuration
  " <Leader>f{char} to move to {char}
  map  <Leader>f <Plug>(easymotion-bd-f)
  nmap <Leader>f <Plug>(easymotion-overwin-f)
  " s{char}{char} to move to {char}{char}
  nmap s <Plug>(easymotion-overwin-f2)
  " Move to line
  map <Leader>L <Plug>(easymotion-bd-jk)
  nmap <Leader>L <Plug>(easymotion-overwin-line)
  " Move to word
  map  <Leader>w <Plug>(easymotion-bd-w)
  nmap <Leader>w <Plug>(easymotion-overwin-w)
  " Gif config
  map  / <Plug>(easymotion-sn)
  omap / <Plug>(easymotion-tn)
  " " These `n` & `N` mappings are options. You do not have to map `n` & `N` to
  " EasyMotion.
  " " Without these mappings, `n` & `N` works fine. (These mappings just provide
  " " different highlight method and have some other features )
  map  n <Plug>(easymotion-next)
  map  N <Plug>(easymotion-prev)
  " <Ctrl-r> redraws the screen and removes any search highlighting.
  noremap <silent> <C-r> :nohl<CR><C-r>

Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdcommenter'
Plugin 'raimondi/delimitmate'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
