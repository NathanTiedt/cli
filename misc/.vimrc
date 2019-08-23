" git clone https://github.com/w0rp/ale.git
" git submodule add https://github.com/flazz/vim-colorschemes.git ~/.vim/bundle/colorschemes
" git clone https://github.com/itchyny/lightline.vim ~/.vim/bundle/lightline.vim
" git clone https://github.com/christoomey/vim-tmux-navigator.git ~/.vim/bundle/vim-tmux-navigator
" git clone https://github.com/hashivim/vim-terraform.git ~/.vim/bundle/vim-terraform


execute pathogen#infect()
syntax on
filetype plugin indent on

set number relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set backspace=indent,start
set rtp+=/usr/local/opt/fzf

highlight LineNr ctermfg=grey

let g:ale_lint_on_save = 1
let g:javascript_plugin_jsdoc = 1
let g:tmux_navigator_no_mappings = 1
let $templates = '~/.vim/templates'

colorscheme monokai
set noshowmode
set laststatus=2

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers = ['json_tool']
"let g:syntastic_json_checkers = ['json_tool']
"let g:syntastic_yaml_checkers = ['pyyaml']

"" Fuzzy Finder remove status bar
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" leader
let mapleader="\<Space>"


"" RANDOM ""

" save current buffer
nnoremap <leader>w :w<cr>

" replace the word under cursor
nnoremap <leader>s :%s/\<<c-r><c-w>\>//g<left><left>


"" NAVIGATORS ""

" open file navigator
nnoremap <leader>e :e .<cr>

" open vertical pane above
nnoremap <leader>pk :Hexplore!<cr>

" open vertical pane below
nnoremap <leader>pj :Hexplore<cr>

" open horizontal pane to the left
nnoremap <leader>ph :Ve<cr>

" open horizontal pane to the right
nnoremap <leader>pl :Ve!<cr>


"" FUZZY FINDER ""

" open finder
nnoremap <leader>; :FZF<cr>

" open finder in new split
nnoremap <leader>p; :Hexplore \| :FZF<cr>

"" ALE LINTERS ""

" fix with linter
nnoremap <leader>af :ALEFix<cr>

" lint
nnoremap <leader>al :ALELint<cr>

" toggle gutter
nnoremap <leader>at :ALEToggle<cr>


" autoclose tags
"inoremap ( ()<Left>
"inoremap { {}<Left>
"inoremap [ []<Left>
"inoremap " ""<Left>

" tmux pane movements
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>

"" TEMPLATES ""
function! NewFile() 
  silent! execute '0r ~/.vim/templates/skeleton.'.expand("<afile>:e")
  s/FILENAME/\=expand("%:t:r")
endfunction
function! ReadFile()
  s/FILENAME/\=expand("%:t:r")
endfunction

if has("autocmd")
  augroup templates
    " generic templates
    autocmd BufNewFile *.* call NewFile()
    autocmd BufRead *.* call ReadFile()
  augroup END
endif
