lua require('plugins')
set exrc

let mapleader = "`"
let g:auto_save = 1

set number
set clipboard=unnamedplus
set autoindent expandtab tabstop=2 shiftwidth=2

let g:sonokai_style = 'default'
let g:sonokai_better_performance = 1
colorscheme sonokai

" lua require'lualine'.setup {options = {theme = 'sonokai'}}
let g:local_vimrc = {'names':['.exrc'],'hash_fun':'LVRHashOfFile'}

nnoremap <Leader>g :Files <C-R>=expand("<cword>")<CR>
nnoremap <Leader>s :Rg <C-R>=expand("<cword>")<CR><CR>
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>h :History<CR>
inoremap £ #
nnoremap - :Explore<CR>
nnoremap <Leader>tf :OpenTestFile<CR>



au FileType {ruby,javascript,typescript,cucumber} nnoremap <leader>t :VigunRun 'all'<cr>
au FileType {ruby,javascript,typescript,cucumber} nnoremap <leader>T :VigunRun 'nearest'<cr>
au FileType {ruby,javascript,typescript,cucumber} nnoremap <leader>d :VigunRun 'debug-nearest'<cr>
au FileType {javascript,typescript} nnoremap <Leader>vo :VigunToggleOnly<cr>
au FileType {ruby,javascript,typescript,go} nnoremap <leader>vi :VigunShowSpecIndex<cr>

function! OpenTestFile()
    let l:filename = expand('%:p:r') . '.test.' . expand('%:e')
    exec 'edit ' . l:filename
endfunction

command! OpenTestFile call OpenTestFile()

let g:vigun_test_keywords = ['test', 'it', 'context', 'describe']
let g:vjs_tags_enabled = 0


" xnoremap <leader>t :AIChat rewrite this ruby code in javascript, assume any base classes can be imported using the corresponding name, use esm modules<CR>
