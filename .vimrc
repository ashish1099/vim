filetype plugin indent on
set ai
set paste
set incsearch
set confirm
set number
set ignorecase
set smartcase
set wildmenu
set wildmode=list:longest,full
set tabstop=2       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=2    " Indents will have a width of 4

set softtabstop=2   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces
set encoding=utf-8
syntax on

" Plugin Settings
map <C-l> :NERDTreeToggle<CR>
map <C-t> :tabnew<CR>

set background=dark
let g:solarized_termtrans = 1
colorscheme solarized

" indent-guis plugin
colorscheme default
set background=dark
set ts=2 sw=2 et
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=1
let g:indent_guides_guide_size = 2

"https://github.com/ntpeters/vim-better-whitespace
autocmd BufWritePre * StripWhitespace
autocmd BufWritePre * retab

"Puppet
" 0 is to disable plugin
let g:loaded_syntastic_puppet_puppet_checker = 0

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"let g:syntastic_

"http://stackoverflow.com/questions/20663169/vim-really-slow-with-long-yaml
"au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim

let g:SuperTabDefaultCompletionType = "context"

execute pathogen#helptags()
execute pathogen#infect()
