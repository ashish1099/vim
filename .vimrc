filetype plugin indent on
set ai
set wrap
set updatetime=100
set signcolumn=yes
set nocompatible
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
set laststatus=2
syntax on

" Plugin Settings
map <C-l> :NERDTreeToggle<CR>
map <C-t> :tabnew<CR>

set background=dark
let g:solarized_termtrans = 1
"olorscheme solarized

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

let g:gitgutter_enabled = 1
let g:gitgutter_highlight_lines = 0
let g:gitgutter_highlight_linenrs = 0

" highlight GitGutterAdd    guifg=#009900 ctermfg=2
" highlight GitGutterChange guifg=#bbbb00 ctermfg=3
" highlight GitGutterDelete guifg=#ff2222 ctermfg=1
" highlight link GitGutterDeleteLine DiffText

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
map BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim

let g:SuperTabDefaultCompletionType = "context"

" let g:auto_save = 1
" let g:auto_save_events = ["InsertLeave", "TextChanged"]

" Undo files
if v:version > 702
    set undofile            " Save undos after file closes
    set undodir=/tmp        " Where to save the undo information
                            " Since this is set to /tmp, the undo files will be
                            " deleted when the server reboots.
                            " But it is still better than not having it.
    set undolevels=1000     " How many undos
    set undoreload=10000    " Number of lines to save for undo
endif

execute pathogen#helptags()
execute pathogen#infect()
