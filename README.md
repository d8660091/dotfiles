# dotfiles
My settings for Vim, Emacs etc.

## Overview
I use these settings in Mac OS and Linux everyday, so it should have no problem with those two systems. 

The main feature of the settings is the consistent user experience across Emacs and Vim. I used Vim for several years then changed to Emacs with a migration of my previous Vim configs. So the themes and shortcuts of Vim and Emacs are very similar, but I no longer actively configure my Vim settings.

You should use those files as a reference or a start point for your own config files. It's not a good idea to sync those configs, you should modifiy and write your own configs as soon as possible. Because things are changing constantly, even if there exist the most efficient config now, it will not be the most efficient config forever, the most efficient config for you is the config you write yourself and the one you can modify quickly. 

## Emacs

![emacs screenshot][emacs-image]

### Usage

The theme use a font which may not exist on your system, make sure you have [Source Code Pro](https://github.com/adobe-fonts/source-code-pro) installed,

``` shell
mkdir -p ~/projects/emacs/themes
cd ~/projects/emacs/themes
curl -O https://raw.githubusercontent.com/d8660091/dotfiles/master/projects/emacs/themes/jellybeans-theme.el
cd ~/
curl -O https://raw.githubusercontent.com/d8660091/dotfiles/master/.emacs.el
```

To use the Emacs config, just backup your .emacs and .emacs.d files, then copy the .emacs file to your home directory and restart Emacs.

### Supported Languages:
Emacs natively support many languages, but the following languages are supported with extra configurations.
* Elisp
* JavaScript
* TypeScript
* PHP
* Python
* Go
* Miscellaneous Web Languages (CSS/SCSS, HTML/Jinja2, ...)
* Latex
* Clojure
* Haskell

### packages
* ace-link
* ag
* anzu
* avy
* cider
* clojure-mode
* company
* company-dabbrev
* company-jedi
* css-mode
* diminish
* dired+
* editorconfig
* elpy
* emmet-mode
* eshell
* evil
* evil-leader
* evil-mc
* evil-nerd-commenter
* evil-numbers
* evil-surround
* exec-path-from-shell
* flycheck
* fringe
* fringe-helper
* git-gutter-fringe
* go-eldoc
* go-mode
* haskell-mode
* helm
* helm-ag
* helm-dash
* helm-projectile
* info
* ivy
* js2-mode
* key-chord
* linum
* magit
* markdown-mode
* org
* paredit
* php-mode
* projectile
* rainbow-mode
* restclient
* spaceline-config
* tide
* web-mode
* wgrep
* which-key
* yasnippet

### Keymaps
```elisp
(define-key company-active-map      "<tab>"    'company-complete-selection)
(define-key company-active-map      "C-n"      'company-select-next)
(define-key company-active-map      "C-p"      'company-select-previous))
(define-key emmet-mode-keymap       "C-y n"    'emmet-next-edit-point)
(define-key evil-insert-state-map   "\C-h"     'left-char)
(define-key evil-insert-state-map   "\C-l"     'right-char)
(define-key evil-insert-state-map   "\C-n"     'nil)
(define-key evil-insert-state-map   "\C-y"     'nil)
(define-key evil-motion-state-map   "\C-y"     'nil))
(define-key evil-normal-state-map   "\C-c\C-h" 'paredit-splice-sexp-killing-backward)
(define-key evil-normal-state-map   "\C-c\C-l" 'paredit-splice-sexp-killing-forward)
(define-key evil-normal-state-map   "\M-d"     'evil-scroll-up)
(define-key evil-normal-state-map   ", e"      'eval-last-sexp)
(define-key evil-normal-state-map   ", g d"    'elpy-goto-definition))
(define-key evil-normal-state-map   ", g d"    'tide-jump-to-definition)
(define-key evil-normal-state-map   ", g r"    'tide-references)
(define-key evil-normal-state-map   ", w"      'save-buffer)
(define-key evil-normal-state-map   "C-c +"    'evil-numbers/inc-at-pt)
(define-key evil-normal-state-map   "C-c -"    'evil-numbers/dec-at-pt))
(define-key evil-normal-state-map   "Q"        'kill-this-buffer)
(define-key evil-normal-state-map   "SPC a g"  'helm-projectile-ag)
(define-key evil-normal-state-map   "SPC b"    'helm-buffers-list)
(define-key evil-normal-state-map   "SPC d"    'helm-projectile-find-dir)
(define-key evil-normal-state-map   "SPC f"    'helm-projectile)
(define-key evil-normal-state-map   "SPC i"    'helm-imenu)
(define-key evil-normal-state-map   "SPC p"    'helm-projectile-switch-project)
(define-key evil-normal-state-map   "SPC r"    'helm-recentf)
(define-key evil-normal-state-map   "[ b"      'magit-blob-previous)
(define-key evil-normal-state-map   "[ c"      'git-gutter:previous-hunk)
(define-key evil-normal-state-map   "[ q"      'previous-error)
(define-key evil-normal-state-map   "] b"      'magit-blob-next)
(define-key evil-normal-state-map   "] c"      'git-gutter:next-hunk)
(define-key evil-normal-state-map   "] f"      'projectile-find-other-file)
(define-key evil-normal-state-map   "] q"      'next-error)
(define-key evil-normal-state-map   "s"        'avy-goto-word-or-subword-1))
(define-key yas-minor-mode-map      "<C-tab>"  'yas-expand)
(define-key yas-minor-mode-map      "<tab>"    nil)
(define-key yas-minor-mode-map      "TAB"      nil)

(evil-leader/set-key
  ;; leader key is ','
  "."  'evilnc-copy-and-comment-operator
  "\\" 'evilnc-comment-operator))
  "cc" 'evilnc-copy-and-comment-lines
  "ci" 'evilnc-comment-or-uncomment-lines
  "cl" 'evilnc-quick-comment-or-uncomment-to-the-line
  "cp" 'evilnc-comment-or-uncomment-paragraphs
  "cr" 'comment-or-uncomment-region
  "cv" 'evilnc-toggle-invert-comment-line-by-line
  "ll" 'evilnc-quick-comment-or-uncomment-to-the-line
```

## Vim

![vim screenshot][vim-image]

### packages
* rizzatti/dash.vim
* ap/vim-css-color
* hail2u/vim-css3-syntax
* airblade/vim-gitgutter
* cakebaker/scss-syntax.vim
* easymotion/vim-easymotion
* editorconfig/editorconfig-vim
* elmcast/elm-vim
* godlygeek/tabular
* itchyny/vim-haskell-indent
* junegunn/fzf
* junegunn/fzf.vim
* junegunn/gv.vim
* leafgarland/typescript-vim
* mattn/emmet-vim
* mbbill/undotree
* othree/html5.vim
* pangloss/vim-javascript
* terryma/vim-multiple-cursors
* tmhedberg/matchit
* tpope/vim-fugitive
* gregsexton/gitv
* tpope/vim-repeat
* tpope/vim-surround
* tpope/vim-unimpaired
* ~/projects/vim-color
* ~/projects/vim-php
* ~/projects/vim-twig
* ~/projects/vim-vue
* junegunn/vim-easy-align
* SirVer/ultisnips
* majutsushi/tagbar
* scrooloose/nerdtree
* plasticboy/vim-markdown
* mileszs/ack.vim
* mxw/vim-jsx
* mhinz/vim-startify
* scrooloose/nerdcommenter
* coot/atp_vim
* ervandew/supertab
* neomake/neomake

### Keymaps
Similar to the keymaps of Emacs.

[emacs-image]: http://i.imgur.com/lb49eOW.png
[vim-image]: http://imgur.com/VDJFKSr.png
