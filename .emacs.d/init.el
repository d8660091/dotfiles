;; -*- flycheck-disabled-checkers: (emacs-lisp-checkdoc); -*-
(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(load-theme 'sexy t)

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(when (version< emacs-version "27.0") (package-initialize))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(create-lockfiles nil)
 '(dired-listing-switches "-aBl --group-directories-first")
 '(display-line-numbers-widen t)
 '(elpy-rpc-timeout 10)
 '(enable-local-variables :all)
 '(evil-mode-line-format '(after . mode-line-front-space))
 '(evil-want-C-u-scroll nil)
 '(exec-path
   '("/usr/local/bin" "/usr/bin" "/bin" "/usr/sbin" "/sbin" "/Applications/Emacs.app/Contents/MacOS/bin-x86_64-10_9" "/Applications/Emacs.app/Contents/MacOS/libexec-x86_64-10_9" "/Applications/Emacs.app/Contents/MacOS/libexec" "/Applications/Emacs.app/Contents/MacOS/bin"))
 '(exec-path-from-shell-check-startup-files nil)
 '(flycheck-disabled-checkers '(javascript-jshint))
 '(font-lock-maximum-decoration '((dired-mode . 1) (t . t)))
 '(fringe-mode nil nil (fringe))
 '(global-evil-mc-mode t)
 '(haskell-process-type 'stack-ghci)
 '(helm-display-buffer-default-height 10)
 '(helm-split-window-in-side-p t)
 '(helm-split-window-inside-p t)
 '(indent-tabs-mode nil)
 '(ivy-truncate-lines nil)
 '(js-indent-level 2)
 '(js2-include-jslint-globals nil)
 '(js2-strict-missing-semi-warning nil)
 '(js2-strict-trailing-comma-warning nil)
 '(magit-diff-use-overlays nil)
 '(mode-line-format
   '("%e" mode-line-front-space evil-mode-line-tag "  " mode-line-client mode-line-modified mode-line-remote mode-line-frame-identification mode-line-buffer-identification "   " mode-line-position "  " mode-name " -" minor-mode-alist " -" mode-line-misc-info mode-line-end-spaces vc-mode))
 '(neo-window-position 'right)
 '(ns-alternate-modifier 'super)
 '(ns-command-modifier 'meta)
 '(ns-pop-up-frames nil)
 '(ns-use-srgb-colorspace nil)
 '(org-agenda-files nil)
 '(org-clock-persist t)
 '(package-selected-packages
   '(elpy lsp-mode csv-mode elm-mode racer rust-mode org-jira gist flow-minor-mode rg prettier-js dockerfile-mode diminish counsel-projectile fzf rjsx-mode go-rename company-go delight sass-mode mustache-mode yaml-mode evil-matchit evil-mc helm php-mode js2-mode company-jedi go-eldoc counsel sr-speedbar cider dired+ paredit company tide pug-mode fuzzy swiper-helm haskell-mode clojure-mode tern evil-numbers ace-link auctex rainbow-mode helm-ag anzu flycheck go-mode transpose-frame markdown-mode wgrep exec-path-from-shell ag helm-dash avy restclient magit emmet-mode which-key yasnippet ivy key-chord evil-leader evil-nerd-commenter evil-surround evil helm-projectile projectile editorconfig git-gutter-fringe web-mode use-package))
 '(powerline-default-separator 'arrow)
 '(projectile-enable-caching t)
 '(projectile-other-file-alist
   '(("tsx" "css")
     ("js" "css")
     ("css" "jsx" "js" "tsx")
     ("jsx" "css")
     ("cpp" "h" "hpp" "ipp")
     ("ipp" "h" "hpp" "cpp")
     ("hpp" "h" "ipp" "cpp" "cc")
     ("cxx" "h" "hxx" "ixx")
     ("ixx" "h" "hxx" "cxx")
     ("hxx" "h" "ixx" "cxx")
     ("c" "h")
     ("m" "h")
     ("mm" "h")
     ("h" "c" "cc" "cpp" "ipp" "hpp" "cxx" "ixx" "hxx" "m" "mm")
     ("cc" "h" "hh" "hpp")
     ("hh" "cc")
     ("vert" "frag")
     ("frag" "vert")
     (nil "lock" "gpg")
     ("lock" "")
     ("gpg" "")))
 '(recentf-exclude
   '("/\\(\\(\\(COMMIT\\|NOTES\\|PULLREQ\\|TAG\\)_EDIT\\|MERGE_\\|\\)MSG\\|\\(BRANCH\\|EDIT\\)_DESCRIPTION\\)\\'" "/.emacs.d/elpa") t)
 '(recentf-max-menu-items 2000)
 '(recentf-max-saved-items 1000)
 '(safe-local-variable-values
   '((flycheck-disabled-checkers 'jsx-tide 'tsx-tide)
     (flycheck-disabled-checkers
      '(jsx-tide tsx-tide))
     (emmet-expand-jsx-className\? . t)
     (eval defun projectile-find-implementation-or-test
           (file-name)
           (interactive)
           (let
               ((base-name
                 (file-name-base file-name))
                (directory-name
                 (file-name-directory file-name)))
             (if
                 (string-match-p "\\.test\\." file-name)
                 (concat
                  (file-name-directory
                   (directory-file-name directory-name))
                  (file-name-sans-extension base-name)
                  ".js")
               (concat directory-name "/__tests__/" base-name ".test.js"))))))
 '(save-place-mode t)
 '(show-paren-delay 0)
 '(show-paren-mode t)
 '(split-width-threshold 220)
 '(undo-tree-auto-save-history t)
 '(undo-tree-history-directory-alist (backquote ((".*" \, temporary-file-directory))))
 '(web-mode-attr-indent-offset 2)
 '(web-mode-code-indent-offset 2)
 '(web-mode-css-indent-offset 2)
 '(web-mode-enable-auto-pairing t)
 '(web-mode-enable-auto-quoting nil)
 '(web-mode-enable-css-colorization t)
 '(web-mode-extra-keywords '(("javascript" "namespace" "type")))
 '(web-mode-markup-indent-offset 2)
 '(web-mode-script-padding 0 t)
 '(web-mode-style-padding 0 t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; miscs
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory))
      auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Shortcuts
(global-set-key [f10] 'describe-face)

;;; Packges:
(use-package diminish
  :ensure t
  :config
  (diminish 'undo-tree-mode))

(use-package delight
  :ensure t)

(use-package evil
  :ensure t
  :config
  (evil-mode t)
  (add-to-list 'evil-emacs-state-modes 'process-menu-mode)
  (setq evil-normal-state-tag "NORMAL"
        evil-insert-state-tag "INSERT"
        evil-emacs-state-tag "EMACS"
        evil-visual-state-tag "VISUAL")
  (global-set-key (kbd "C-SPC") nil)
  (define-key evil-normal-state-map "\M-d" 'evil-scroll-up)
  (define-key evil-motion-state-map "\M-d" 'evil-scroll-up)
  (define-key evil-normal-state-map (kbd "Q") 'kill-this-buffer)
  (define-key evil-normal-state-map (kbd ", e") 'eval-last-sexp)
  (define-key evil-normal-state-map (kbd ", w") 'save-buffer)
  (define-key evil-normal-state-map (kbd "[ q") 'previous-error)
  (define-key evil-normal-state-map (kbd "] q") 'next-error)
  (define-key evil-normal-state-map (kbd "] f") 'projectile-find-other-file)
  (define-key evil-normal-state-map (kbd "] t") 'projectile-toggle-between-implementation-and-test)
  (define-key evil-insert-state-map "\C-h" 'left-char)
  (define-key evil-insert-state-map "\C-l" 'right-char)
  (define-key evil-insert-state-map "\C-n" 'nil)
  (define-key evil-insert-state-map "\C-y" 'nil)
  (define-key evil-motion-state-map "\C-y" 'nil))

(use-package ace-link
  :ensure t
  :config
  (ace-link-setup-default))

(use-package info
  :config
  (defun my-info-mode-hook ()
    (linum-mode -1)
    (setq show-trailing-whitespace nil))
  (add-hook 'info-mode-hook 'my-info-mode-hook))

(use-package js2-mode
  :ensure t
  :mode "\\.jsx?\\'")

(use-package simple
  :if (not (version< emacs-version "26.1"))
  :hook ((prog-mode text-mode) . display-line-numbers-mode))

(use-package linum
  :if (version< emacs-version "26.1")
  :ensure t
  :config
  (defvar cur-line-number 1)
  (defvar linum-width 1)
  ;; highlight current line

  (setq linum-format
        (lambda (line-number)
          (propertize (format
                       (concat "%" (number-to-string linum-width)
                               "d ")
                       line-number)
                      'font-lock-face
                      (if (= line-number cur-line-number)
                          '(:foreground "#c5c8c6"
                                        :background "#1d1f21"
                                        :underline nil
                                        :weight normal)
                        'linum))))
  (defun my-set-current-line-number (b)
    (setq cur-line-number (line-number-at-pos)
          linum-width (length
                       (number-to-string
                        (count-lines (point-min) (point-max))))))
  (advice-add 'linum-update :before
              'my-set-current-line-number)
  ;; refresh linum after eldoc is refreshed
  (advice-add 'eldoc-print-current-symbol-info :after 'linum-update-current)
  (defun disable-linum-mode ()
    (interactive)
    (linum-mode -1)) 
  (global-linum-mode t)
  (add-hook 'dired-mode-hook 'disable-linum-mode)
  (add-hook 'Custom-mode-hook 'disable-linum-mode)
  (add-hook 'special-mode-hook 'disable-linum-mode)
  (add-hook 'comint-mode-hook 'disable-linum-mode)
  (add-hook 'helm-major-mode-hook 'disable-linum-mode))

(use-package css-mode
  :mode ("\\.scss\\'" . scss-mode))

(use-package php-mode
  :ensure t
  :mode ("\\.php\\'" . php-mode))

(use-package web-mode
  :ensure t
  :mode ("\\.vue\\'"
         "\\.jsx?\\'"
         "[^\\.][^\\d)]\\.tsx?\\'"
         "\\.dtl\\'")
  :config
  (defun my-web-mode-hook ()
    (when (equal web-mode-content-type "javascript")
      (web-mode-set-content-type "jsx")))
  (add-hook 'web-mode-hook 'my-web-mode-hook))

(use-package editorconfig
  :ensure t
  :config
  (diminish 'editorconfig-mode)
  (add-hook 'editorconfig-custom-hooks
            (lambda (hash)
              (setq web-mode-script-padding 0)
              (setq web-mode-style-padding 0)))
  (editorconfig-mode t))

(use-package projectile
  :ensure t
  :delight '(:eval (concat " " (projectile-project-name)))
  :config
  (projectile-mode t))

(use-package helm
  :ensure t
  :config
  (global-set-key (kbd "M-x") 'helm-M-x)
  (define-key evil-normal-state-map (kbd "SPC b") 'helm-buffers-list)
  (define-key evil-normal-state-map (kbd "SPC k") 'helm-show-kill-ring)
  (define-key evil-normal-state-map (kbd "SPC i") 'helm-imenu))

(use-package helm-projectile
  :ensure t
  :config
  (helm-projectile-on)
  ;; (define-key evil-normal-state-map (kbd "SPC d") 'helm-projectile-find-dir)
  (define-key evil-normal-state-map (kbd "SPC f") 'helm-projectile)
  (define-key evil-normal-state-map (kbd "SPC p") 'helm-projectile-switch-project)
  (define-key evil-normal-state-map (kbd "SPC a g") 'helm-projectile-ag))

(use-package counsel
  :ensure t
  :config 
  (define-key evil-normal-state-map (kbd "SPC r") 'counsel-recentf)
  (global-set-key (kbd "C-x C-f") 'counsel-find-file)
  (define-key evil-normal-state-map (kbd "SPC f") 'counsel-projectile-find-file))

(use-package evil-numbers
  :ensure t
  :config
  (define-key evil-normal-state-map (kbd "C-c +") 'evil-numbers/inc-at-pt)
  (define-key evil-normal-state-map (kbd "C-c -") 'evil-numbers/dec-at-pt))

(use-package emmet-mode
  :ensure t
  :hook (web-mode html-mode scss-mode)
  :config
  (define-key emmet-mode-keymap (kbd "C-y n") 'emmet-next-edit-point))

(use-package rainbow-mode
  :ensure t
  :hook (css-mode scss-mode-hook))

(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode t))

(use-package evil-nerd-commenter
  :ensure t
  :config
  (evilnc-default-hotkeys))

(use-package evil-leader
  :ensure t
  :after evil
  :config
  (global-evil-leader-mode t)
  (evil-leader/set-key
    "ci" 'evilnc-comment-or-uncomment-lines
    "cl" 'evilnc-quick-comment-or-uncomment-to-the-line
    "ll" 'evilnc-quick-comment-or-uncomment-to-the-line
    "cc" 'evilnc-copy-and-comment-lines
    "cp" 'evilnc-comment-or-uncomment-paragraphs
    "cr" 'comment-or-uncomment-region
    "cv" 'evilnc-toggle-invert-comment-line-by-line
    "."  'evilnc-copy-and-comment-operator
    "\\" 'evilnc-comment-operator))

(use-package key-chord
  :ensure t
  :config
  (key-chord-mode t)
  (key-chord-define evil-insert-state-map "jk" 'evil-normal-state))

(use-package ivy
  :ensure t
  :config
  (diminish 'ivy-mode)
  (ivy-mode t))

(use-package yasnippet
  :ensure t
  :config
  (setq yas-snippet-dirs
        '("~/.emacs.d/snippets" ;; the yasmate collection
          "~/projects/emacs/yasnippet-snippets"))
  (define-key yas-minor-mode-map (kbd "<tab>") nil)
  (define-key yas-minor-mode-map (kbd "TAB") nil)
  (define-key yas-minor-mode-map (kbd "<C-tab>") 'yas-expand)
  (yas-global-mode t))

(use-package which-key
  :ensure t
  :diminish which-key-mode
  :config
  (which-key-mode t))

(use-package magit
  :ensure t
  :config
  (add-hook 'magit-blob-mode-hook
            (lambda ()
              (flymake-mode -1)))
  (global-set-key (kbd "C-x g") 'magit-status)
  (define-key evil-normal-state-map (kbd "[ b") 'magit-blob-previous)
  (define-key evil-normal-state-map (kbd "] b") 'magit-blob-next))

(use-package restclient
  :ensure t)

(use-package helm-dash
  :ensure t)

(use-package ag
  :ensure t)

(use-package wgrep
  :ensure t)

(use-package exec-path-from-shell
  :ensure t
  :config
  (exec-path-from-shell-initialize))

(use-package evil-mc
  :ensure t
  :config
  (diminish 'evil-mc-mode))

(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

(use-package go-mode
  :ensure t
  :config
  (defun my-go-mode-hook ()
    (set (make-local-variable 'company-backends) '(company-go))
    (add-hook 'before-save-hook 'gofmt-before-save))
  (add-hook 'go-mode-hook 'my-go-mode-hook))

(use-package go-eldoc
  :ensure t
  :config
  (add-hook 'go-mode-hook 'go-eldoc-setup))

(use-package flycheck
  :ensure t
  :config
  (diminish 'flycheck-mode)
  (flycheck-add-mode 'javascript-eslint 'web-mode)
  (global-flycheck-mode))

(use-package helm-ag
  :ensure t
  :functions helm-add-action-to-source
  :config
  (defun my-insert-line (candidate)
    (insert (car (last (split-string candidate ":")))))
  ;; Add line completion to helm-projectile ag
  (setf (alist-get 'real-to-display helm-source-do-ag)
        'helm-ag--candidate-transformer)
  (assq-delete-all 'nohighlight helm-source-do-ag)
  (setf (alist-get 'filtered-candidate-transformer helm-source-do-ag)
        'helm-fuzzy-highlight-matches)
  (helm-add-action-to-source "Insert line" 'my-insert-line helm-source-do-ag)
  (add-hook 'helm-ag-mode-hook 'compilation-minor-mode))

(use-package anzu
  :init
  :ensure t
  :config
  (diminish 'anzu-mode)
  (setq anzu-cons-mode-line-p nil)
  (global-anzu-mode +1))

(use-package tide
  :ensure t
  :functions (setup-tide-mode evil--jumps-push)
  :config
  (defun setup-tide-mode ()
    (interactive)
    (tide-setup)
    (define-key evil-normal-state-local-map (kbd "g d") 'tide-jump-to-definition)
    (define-key evil-normal-state-local-map (kbd ", g r") 'tide-references)
    (flycheck-mode +1)
    (setq flycheck-check-syntax-automatically '(save mode-enabled idle-change))
    (flycheck-add-next-checker 'tsx-tide '(t . javascript-eslint))
    (eldoc-mode +1)
    (tide-hl-identifier-mode +1)
    (company-mode +1)
    (editorconfig-apply))
  (advice-add 'tide-move-to-location :before (lambda (_) (evil--jumps-push)))
  (add-hook 'typescript-mode-hook #'setup-tide-mode)
  (add-hook 'web-mode-hook
            (lambda ()
              (when (member (file-name-extension buffer-file-name) '("js" "tsx" "ts"))
                (setup-tide-mode)))))

(use-package git-gutter-fringe
  :ensure t
  :config
  (diminish 'git-gutter-mode)
  (setq-default fringes-outside-margins t)
  (define-key evil-normal-state-map (kbd "] c") 'git-gutter:next-hunk)
  (define-key evil-normal-state-map (kbd "[ c") 'git-gutter:previous-hunk)
  (global-git-gutter-mode))

(use-package fringe-helper
  :ensure t
  :config
  (define-fringe-bitmap 'flycheck-fringe-bitmap-double-arrow
    (vector #b00000000
            #b00000000
            #b00000000
            #b00000000
            #b00000000
            #b00000000
            #b11111100
            #b11111110
            #b11111110
            #b11111110
            #b11111100
            #b00000000
            #b00000000
            #b00000000
            #b00000000
            #b00000000))
  (fringe-helper-define 'git-gutter-fr:added '(center repeated)
    "XXX.....")
  (fringe-helper-define 'git-gutter-fr:modified '(center repeated)
    "XXX.....")
  (fringe-helper-define 'git-gutter-fr:deleted 'bottom
    "X......."
    "XX......"
    "XXX....."
    "XXXX...."
    "XXXXX..."))

(use-package haskell-mode
  :ensure t
  :functions evil-local-mode
  :config
  (defun setup-haskell-mode ()
    (define-key evil-normal-state-local-map (kbd "C-c C-j") 'haskell-mode-jump-to-def))
  (add-hook 'haskell-mode-hook 'setup-haskell-mode)
  (add-hook 'haskell-interactive-mode-hook
            (lambda ()
              (setq show-trailing-whitespace nil)))
  (add-hook 'haskell-error-mode-hook
            (lambda ()
              (evil-local-mode -1)
              (setq show-trailing-whitespace nil))))

(use-package fringe
  :config
  (setq-default fringe-indicator-alist
                '((truncation nil right-arrow)
                  (continuation nil right-curly-arrow)
                  (overlay-arrow . right-triangle)
                  (up . up-arrow)
                  (down . down-arrow)
                  (top top-left-angle top-right-angle)
                  (bottom bottom-left-angle bottom-right-angle top-right-angle top-left-angle)
                  (top-bottom left-bracket right-bracket top-right-angle top-left-angle)
                  (empty-line . empty-line)
                  (unknown . question-mark))))

;; dired+ is currently not available in mepla
(use-package dired+
  :config
  (diredp-toggle-find-file-reuse-dir 1))

(use-package cider
  :ensure t
  :config
  (setq cider-cljs-lein-repl
        "(do (require 'figwheel-sidecar.repl-api)
           (figwheel-sidecar.repl-api/start-figwheel!)
           (figwheel-sidecar.repl-api/cljs-repl))"))

(use-package clojure-mode
  :mode ("\\.cljs\\'" . clojurescript-mode)
  :ensure t)

(use-package paredit
  :ensure t
  :config
  (diminish 'paredit-mode)
  (define-key evil-normal-state-map "\C-c\C-h" 'paredit-splice-sexp-killing-backward)
  (define-key evil-normal-state-map "\C-c\C-l" 'paredit-splice-sexp-killing-forward)
  (add-hook 'clojure-mode-hook 'paredit-mode)
  (add-hook 'clojurescript-mode-hook 'paredit-mode)
  (add-hook 'emacs-lisp-mode-hook 'paredit-mode))


(use-package company
  :ensure t
  :config
  (setq company-tooltip-align-annotations t)
  (add-hook 'after-init-hook 'global-company-mode)
  (define-key company-active-map (kbd "<tab>") 'company-complete-selection)
  (define-key company-active-map (kbd "C-n") 'company-select-next)
  (define-key company-active-map (kbd "C-p") 'company-select-previous))

(use-package company-dabbrev
  :config
  (setq company-dabbrev-downcase nil))

(use-package eshell
  :config
  (defun my-eshell-mode-hook ()
    (evil-emacs-state)
    (linum-mode -1))
  (add-hook 'eshell-mode-hook 'my-eshell-mode-hook))

(use-package org
  :ensure t
  :config
  (define-key evil-normal-state-map (kbd "SPC o") (lambda () (interactive) (find-file "~/notes.org")))
  (setq org-todo-keywords
        '((sequence "TODO" "WAIT(!)" "DONE(!)")))
  (advice-add 'org-clock-get-clock-string :filter-return (apply-partially 's-truncate 20))
  (setq org-log-done t))

(use-package avy
  :ensure t
  :config
  (define-key evil-normal-state-map (kbd "s") 'avy-goto-word-or-subword-1))

(use-package company-jedi
  :ensure t
  :config
  (defun my-python-mode-hook ()
    (add-to-list 'company-backends 'company-jedi))
  (add-hook 'python-mode-hook 'my-python-mode-hook))

(use-package elpy
  :ensure t
  :diminish elpy-mode
  :config
  (defun my-elpy-mode ()
    (when (eq (string-match "\~.*\~$" (buffer-name)) nil)
      (elpy-mode 1)
      (flycheck-mode -1)
      (evil-local-set-key 'normal (kbd "g d") 'elpy-goto-definition)))
  (elpy-enable)
  (remove-hook 'python-mode-hook 'elpy-mode)
  (add-hook 'python-mode-hook 'my-elpy-mode))

(use-package evil-matchit
  :ensure t
  :config
  (global-evil-matchit-mode 1))

(use-package autorevert
  :diminish auto-revert-mode)

(use-package highlight-indentation
  :diminish highlight-indentation-mode)

(use-package counsel-projectile
  :ensure t)

(use-package yaml-mode
  :ensure t)

(use-package dockerfile-mode
  :ensure t)

(use-package prettier-js
  :ensure t
  :hook ((web-mode css-mode) . prettier-js-mode))

(use-package lsp-vue)


(defun xah-copy-file-path (&optional *dir-path-only-p)
  "Copy the current buffer's file path or dired path to `kill-ring'.
Result is full path.
If `universal-argument' is called first, copy only the dir path."
  (interactive "P")
  (let (($fpath
         (if (equal major-mode 'dired-mode)
             (expand-file-name default-directory)
           (if (buffer-file-name)
               (buffer-file-name)
             (user-error "Current buffer is not associated with a file.")))))
    (kill-new
     (if *dir-path-only-p
         (progn
           (message "Directory path copied: 「%s」" (file-name-directory $fpath))
           (file-name-directory $fpath))
       (progn
         (message "File path copied: 「%s」" $fpath)
         $fpath )))))

(defun my-find-file-hook ()
  "If a file is over a given size, make the buffer read only."
  (when (> (buffer-size) (* 1024 1024))
    (setq buffer-read-only t)
    (buffer-disable-undo)
    (fundamental-mode)))
(add-hook 'find-file-hook 'my-find-file-hook)

(defun my-filter-dired-buffers (buffer-list)
  (delq nil (mapcar
             (lambda (buffer)
               (if (eq (with-current-buffer buffer major-mode)  'dired-mode)
                   nil
                 buffer))
             buffer-list)))
(advice-add 'helm-skip-boring-buffers :filter-return 'my-filter-dired-buffers)


(defun my-helm-buffers-sort-transformer (_ candidates source)
  candidates)
(advice-add 'helm-buffers-sort-transformer :around 'my-helm-buffers-sort-transformer)
