" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged') 
  Plug 'tomasr/molokai'
    let g:molokai_original = 1
  Plug 'scrooloose/syntastic'
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
    let g:syntastic_mode_map = { 'mode': 'passive', 'passive_filetypes': ['ruby', 'typescript'] }
    let g:syntastic_ruby_checkers = ['rubocop']
    let g:syntastic_typescript_checkers = ['tslint']
  Plug 'leafgarland/typescript-vim'
    let g:typescript_opfirst='\%([<>=,?^%|*/&]\|\([-:+]\)\1\@!\|!=\|in\%(stanceof\)\=\>\)'
  Plug 'nathanaelkane/vim-indent-guides'
    let g:indent_guides_auto_colors = 0
    let g:indent_guides_enable_on_vim_startup = 1
    let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
    autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=darkblue ctermbg=239
    autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkred ctermbg=243
  Plug 'hashivim/vim-terraform'
    let g:terraform_fmt_on_save = 1
call plug#end()

colorscheme default
set background=dark
set encoding=utf-8
set tabstop=2
set number
set shiftwidth=2
set autoindent
set expandtab
set cursorline

autocmd BufNewFile,BufRead *.ts set filetype=typescript

noremap <C-l> :SyntasticCheck
