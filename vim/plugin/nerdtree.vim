" Set nerdtree nav window width
let g:NERDTreeWinSize = 30
" Hide prese ? for help and bookmarks
let g:NERDTreeMinimalUI = 1
" highline cursor line in nerdtree
let g:NERDTreeHighlightCursorline = 1
" ignore patter for nerdtree
let g:NERDTreeRespectWildIgnore = 1
" toggle arrows for display
let g:NERDTreeDirArrows = 1
" show hidden files by default
let NERDTreeShowHidden=1
" toggle nerd tree
map <leader>n :execute 'NERDTreeToggle ' . getcwd()<CR>
" open nerdtree on startup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" close vim if nerdtree is the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let NERDTreeIgnore=['\.png$', '\.jpg$', '\.gif$', 'bin$[[dir]]', 'script$[[dir]]', 'tmp$[[dir]]', 'log$[[dir]]', 'public/uploads$[[dir]]', '^doc[[dir]]', 'node_modules$[[dir]]', '\.docker$', '\.idea$', '\.git$', '\.github$', '\.lefthook$', '\.bundle$', '\.semaphore$']
