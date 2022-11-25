filetype on          " Détection du type de fichier 
syntax on            " Coloration syntaxique
set background=dark  " Adapte les couleurs pour un fond noir (idéeal dans PuTTY)
set linebreak        " Coupe les lignes au dernier mot et pas au caractère (requier Wrap lines, actif par défaut)
set visualbell       " Utilisation du clignotement à la place du "beep"
set showmatch        " Surligne le mots recherchés dans le texte
set hlsearch         " Surligne tous les résultats de la recherche
set mouse=a          " Active la souris, dans tous les modes (note il faudra alors d'appuyer sur "shift" pour faire les sélections de copier-coller dans l'éditeur)
set nu


function Shortcut_commentary()
	if (expand('%:e')=="c" || expand('%:e')=="cpp" || expand('%:e')=="h" || expand('%:e')=="hpp" || expand('%')==".c" || expand('%')==".cpp")
		nnoremap <C-O> :s/\/\/\\|^/\/\/<CR>:noh<CR>
		inoremap <C-O> <esc>:s/\/\/\\|^/\/\/<CR>:noh<CR>i
		vnoremap <C-O> :s/\/\/\\|^/\/\/<CR>:noh<CR>v
		nnoremap <C-P> :s/\/\/\\|^//<CR>:noh<CR>
		inoremap <C-P> <esc>:s/\/\/\\|^//<CR>:noh<CR>i
		vnoremap <C-P> :s/\/\/\\|^//<CR>:noh<CR>v
	endif
endfunction

call Shortcut_commentary()

colorscheme morning

set autoindent

set tabstop=2
