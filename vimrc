" Enabling filetype support provides filetype-specific indenting,
" syntax highlighting, omni-completion and other useful settings.
filetype plugin indent on
syntax on
set encoding=UTF-8

"" various settings
set backspace=indent,eol,start 			" Proper backspace behavior.
set hidden 					" Possibility to have more than one unsaved buffers.
set incsearch 					" Incremental search, hit `<CR>` to stop.
set ruler 					" Shows the current line number at the bottom-right of the screen.
set wildmenu					" Great command-line completion, use `<Tab>` to move around and `<CR>` to validate.
set number					" Show line numbers
let R_assign = 0				" Disables some R key bindings
set splitbelow					" All splits start below
set mouse=a
set tabstop=2
set shiftwidth=2
let NERDTreeShowHidden=1
let g:ycm_confirm_extra_conf = 0
let g:vimwiki_list = [{ 'path': '~/Desktop/Notes/',
			\ 'syntax':'markdown', 'ext': '.md' }]
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_math = 1
let g:vim_markdown_no_extensions_in_markdown = 1
let g:vim_markdown_autowrite = 1
set completeopt-=preview
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" key mappings
imap jk <Esc>
map <C-b> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <Leader>ww :e ~/Desktop/Notes/index.md<cr>
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

augroup lexical
	autocmd!
	autocmd FileType markdown,mkd call lexical#init()
	autocmd FileType textile call lexical#init()
	autocmd FileType text call lexical#init({ 'spell': 0 })
augroup END

"autocmd BufWritePre *.py,*.js,*.cc,*.hh,*.c,*.h,*.md :call <SID>StripTrailingWhitespaces()

" UltiSnips triggering
let g:UltiSnipsExpandTrigger = '<C-space>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'

" Vim-Plug
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" ultisnips
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Vim-Lexical
Plug 'reedes/vim-lexical'

" Markdown-Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" Supertab
Plug 	'ervandew/supertab'

" Tagbar
Plug 'majutsushi/tagbar'

" Airline
Plug 'vim-airline/vim-airline'

" Vim Markdown
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }

" Vim mkdir
Plug 'pbrisbin/vim-mkdir'

" Nerd Commenter
Plug 'scrooloose/nerdcommenter'

Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0

Plug 'KeitaNakamura/tex-conceal.vim'
set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none

" Ayu Theme
Plug 'ayu-theme/ayu-vim'

" Vim Devicons
Plug 'ryanoasis/vim-devicons'

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Initialize plugin system
call plug#end()

set termguicolors
let ayucolor="dark"
colorscheme ayu


