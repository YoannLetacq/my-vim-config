" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'maxmellon/vim-jsx-pretty'
Plug 'projekt0n/github-nvim-theme', { 'tag': 'v0.0.7' }
Plug 'github/copilot.vim'

" === Ajouts pour Rust ===
Plug 'rust-lang/rust.vim'              " Support syntaxique pour Rust
Plug 'simrat39/rust-tools.nvim'        " Outils supplémentaires pour Rust
Plug 'tpope/vim-commentary'            " Simplifier les commentaires
Plug 'sharkdp/vivid'                   " Aperçu des fichiers Rust
Plug 'nvim-lua/plenary.nvim'           " Dépendance pour rust-tools.nvim

" === Ajouts pour Golang ===
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }  " Plugin principal pour Go
Plug 'neoclide/coc.nvim', {'branch': 'release'}     " LSP via coc.nvim
Plug 'josa42/coc-go'                                " Extension CoC pour Go
Plug 'dense-analysis/ale'                           " Linting et diagnostics
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Recherche rapide
Plug 'junegunn/fzf.vim'                             " Interface pour FZF

" === Ajouts pour C++ ===
Plug 'jackguo380/vim-lsp-cxx-highlight'         " Highlighting syntaxique LSP pour C++
Plug 'octol/vim-cpp-enhanced-highlight'         " Amélioration de la coloration C++
Plug 'rhysd/vim-clang-format'                   " Formatage automatique avec clang-format
Plug 'dense-analysis/ale'                       " Linting et diagnostics en direct
Plug 'lervag/vimtex'                            " Support pour les commentaires Doxygen
Plug 'clangd/coc-clangd'                        " Extension CoC pour clangd

" === Ajouts pour CMake ===
Plug 'pboettch/vim-cmake-syntax'       " Syntaxe améliorée pour CMake
Plug 'cdelledonne/vim-cmake'           " Intégration de CMake avec Vim
Plug 'Shatur/neovim-cmake'             " Gestion avancée des builds avec CMake

" Initialize plugin system
call plug#end()

" === Paramètres généraux ===
set bg=dark
set hlsearch
set backspace=indent,eol,start
set guifont=DejaVu\ Sans:s12
set mouse=a
set ignorecase
set belloff=all
set foldmethod=indent
set expandtab
set shiftwidth=4
set tabstop=4
set number
set clipboard=unnamedplus
colorscheme gruvbox

" === Mappings ===
nmap <leader>n :NERDTreeFocus<CR>
nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" === CoC Configuration ===
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-html',
  \ 'coc-clangd',
  \ 'coc-java',
  \ 'coc-rust-analyzer',
  \ 'coc-go'
  \ ]

" === Configuration Go ===
let g:ale_linters = {'go': ['golangci-lint']}
let g:ale_fixers = {'go': ['gofmt', 'goimports']}
let g:go_fmt_command = "goimports"
autocmd BufWritePre *.go :GoFmt
nnoremap <leader>gb :GoBuild<CR>
nnoremap <leader>gr :GoRun<CR>
nnoremap <leader>gt :GoTest<CR>
nnoremap <leader>gi :GoImports<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :Rg<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fl :Lines<CR>

" === Configuration C++ ===
let g:ale_linters = {'cpp': ['clangtidy', 'cppcheck']}
let g:ale_fixers = {'cpp': ['clang-format']}
let g:clang_format#detect_style_file = 1
autocmd FileType c,cpp,cc,h,hpp autocmd BufWritePre <buffer> :ClangFormat
nnoremap <leader>cb :!clang++ -std=c++17 % -o %:r && ./%:r<CR>
nnoremap <leader>cf :ClangFormat<CR>
nnoremap <leader>ca :ALEFix<CR>

set makeprg=x86_64-w64-mingw32-g++\nset path+=/usr/x86_64-w64-mingw32/include
set completeopt=menu,menuone,noselect

" === Ajouts pour JavaScript / TypeScript ===
Plug 'pangloss/vim-javascript'          " Coloration et indent JS
Plug 'leafgarland/typescript-vim'       " Support TS
Plug 'mattn/emmet-vim'                  " Emmet pour HTML/CSS/JS
Plug 'styled-components/vim-styled-components'  " Syntaxe pour styled‑components

