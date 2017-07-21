;; -*- flycheck-disabled-checkers: (emacs-lisp-checkdoc); -*-
(add-to-list 'custom-theme-load-path "~/projects/emacs/themes")

(load-theme 'jellybeans t)

(scroll-bar-mode -1)
(tool-bar-mode -1)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-view-program-selection
   (quote
    (((output-dvi has-no-display-manager)
      "dvi2tty")
     ((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "Zathura")
     (output-html "xdg-open"))))
 '(browse-url-browser-function (quote browse-url-chromium))
 '(column-number-mode t)
 '(company-idle-delay 0.2)
 '(company-tooltip-idle-delay 0.1)
 '(compilation-message-face (quote default))
 '(cursor-in-non-selected-windows nil)
 '(diredp-hide-details-initially-flag nil)
 '(eldoc-idle-delay 0.2)
 '(evil-want-C-u-scroll nil)
 '(exec-path
   (quote
    ("/usr/local/bin" "/usr/bin" "/bin" "/usr/sbin" "/sbin" "/Applications/Emacs.app/Contents/MacOS/bin-x86_64-10_9" "/Applications/Emacs.app/Contents/MacOS/libexec-x86_64-10_9" "/Applications/Emacs.app/Contents/MacOS/libexec" "/Applications/Emacs.app/Contents/MacOS/bin")))
 '(exec-path-from-shell-check-startup-files nil)
 '(flycheck-disabled-checkers (quote (javascript-jshint)))
 '(font-lock-maximum-decoration (quote ((dired-mode . 1) (t . t))))
 '(fringe-mode nil nil (fringe))
 '(global-evil-mc-mode t)
 '(helm-split-window-in-side-p t)
 '(indent-tabs-mode nil)
 '(js-indent-level 2)
 '(js2-include-jslint-globals nil)
 '(js2-strict-missing-semi-warning nil)
 '(js2-strict-trailing-comma-warning nil)
 '(magit-diff-use-overlays nil)
 '(neo-window-position (quote right))
 '(ns-alternate-modifier (quote super))
 '(ns-command-modifier (quote meta))
 '(ns-pop-up-frames nil)
 '(ns-use-srgb-colorspace nil)
 '(org-agenda-files (quote ("~/org/home.org")))
 '(org-clock-persist t)
 '(package-selected-packages
   (quote
    (company-jedi elpy all-the-icons go-eldoc counsel sr-speedbar cider dired+ paredit company tide pug-mode fuzzy swiper-helm haskell-mode clojure-mode tern evil-numbers ace-link auctex rainbow-mode helm-ag anzu flycheck go-mode transpose-frame markdown-mode wgrep exec-path-from-shell ag helm-dash avy restclient magit emmet-mode which-key yasnippet ivy key-chord evil-leader evil-nerd-commenter evil-surround evil spaceline helm-projectile projectile editorconfig git-gutter-fringe web-mode use-package)))
 '(powerline-default-separator (quote arrow))
 '(recentf-max-menu-items 2000)
 '(recentf-max-saved-items 1000)
 '(safe-local-variable-values
   (quote
    ((eval when
           (require
            (quote rainbow-mode)
            nil t)
           (rainbow-mode 1)))))
 '(save-place-mode t)
 '(show-paren-delay 0)
 '(show-paren-mode t)
 '(undo-tree-auto-save-history t)
 '(undo-tree-history-directory-alist (backquote ((".*" \, temporary-file-directory))))
 '(web-mode-attr-indent-offset 2)
 '(web-mode-code-indent-offset 2)
 '(web-mode-css-indent-offset 2)
 '(web-mode-enable-auto-pairing t)
 '(web-mode-enable-auto-quoting nil)
 '(web-mode-extra-keywords (quote (("javascript" "namespace" "type"))))
 '(web-mode-markup-indent-offset 2)
 '(web-mode-script-padding 0)
 '(web-mode-style-padding 0))

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
;; (global-set-key (kbd "C-s") 'swiper)
(global-set-key [f10] 'describe-face)

;;; Packges:
(use-package ace-link
  :ensure t
  :config
  (ace-link-setup-default))

(use-package info
  :config
  (add-hook 'info-mode-hook
            (lambda ()
              (setq show-trailing-whitespace nil))))

(use-package js2-mode
  :ensure t
  :mode "\\.jsx?\\'")

(use-package linum
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
  (add-hook 'custom-mode-hook 'disable-linum-mode)
  (add-hook 'special-mode-hook 'disable-linum-mode)
  (add-hook 'helm-major-mode-hook 'disable-linum-mode))

(use-package css-mode
  :mode ("\\.scss\\'" . scss-mode))

(use-package php-mode
  :ensure t
  :mode ("\\.php\\'" . php-mode))

(use-package web-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.vue\\|.twig\\|.dtl\\|.tsx\\'" . web-mode)))

(use-package editorconfig
  :ensure t
  :config
  (add-hook 'editorconfig-custom-hooks
            (lambda (hash)
              (setq web-mode-script-padding 0)
              (setq web-mode-style-padding 0)))
  (editorconfig-mode t))

(use-package projectile
  :ensure t
  :config
  (with-no-warnings
    (projectile-register-project-type 'php '("composer.json")
                                      :test-suffix "Spec"))
  (projectile-mode t)
  (add-to-list 'projectile-other-file-alist '("jsx" "css"))
  (add-to-list 'projectile-other-file-alist '("css" "jsx")))

(use-package helm
  :ensure t
  :config
  (global-set-key (kbd "M-x") 'helm-M-x)
  :ensure t)

(use-package helm-projectile
  :ensure t
  :config
  (helm-projectile-on))

(use-package diminish
  :ensure t)

(use-package evil
  :ensure t
  :config
  (evil-mode t)
  (add-to-list 'evil-emacs-state-modes 'process-menu-mode)
  (setq evil-normal-state-tag "NORMAL"
        evil-insert-state-tag "INSERT"
        evil-visual-state-tag "VISUAL")
  (define-key evil-normal-state-map "\M-d" 'evil-scroll-up)
  (define-key evil-normal-state-map "\M-d" 'evil-scroll-up)
  (define-key evil-normal-state-map (kbd "Q") 'kill-this-buffer)
  (define-key evil-normal-state-map (kbd "SPC b") 'helm-buffers-list)
  (define-key evil-normal-state-map (kbd "SPC d") 'helm-projectile-find-dir)
  (define-key evil-normal-state-map (kbd "SPC f") 'helm-projectile)
  (define-key evil-normal-state-map (kbd "SPC p") 'helm-projectile-switch-project)
  (define-key evil-normal-state-map (kbd "SPC a g") 'helm-projectile-ag)
  (define-key evil-normal-state-map (kbd "SPC r") 'helm-recentf)
  (define-key evil-normal-state-map (kbd "SPC i") 'helm-imenu)
  (define-key evil-normal-state-map (kbd ", e") 'eval-last-sexp)
  (define-key evil-normal-state-map (kbd ", w") 'save-buffer)
  (define-key evil-normal-state-map (kbd "[ q") 'previous-error)
  (define-key evil-normal-state-map (kbd "] q") 'next-error)
  (define-key evil-normal-state-map (kbd "[ b") 'magit-blob-previous)
  (define-key evil-normal-state-map (kbd "] b") 'magit-blob-next)
  (define-key evil-normal-state-map (kbd "] f") 'projectile-find-other-file)
  (define-key evil-insert-state-map "\C-h" 'left-char)
  (define-key evil-insert-state-map "\C-l" 'right-char)
  (define-key evil-insert-state-map "\C-n" 'nil)
  (define-key evil-insert-state-map "\C-y" 'nil)
  (define-key evil-motion-state-map "\C-y" 'nil))

(use-package evil-numbers
  :ensure t
  :config
  (define-key evil-normal-state-map (kbd "C-c +") 'evil-numbers/inc-at-pt)
  (define-key evil-normal-state-map (kbd "C-c -") 'evil-numbers/dec-at-pt))

(use-package emmet-mode
  :ensure t
  :after web-mode
  :config
  (define-key emmet-mode-keymap (kbd "C-y n") 'emmet-next-edit-point)
  (add-hook 'scss-mode-hook 'emmet-mode)
  (add-hook 'html-mode-hook 'emmet-mode)
  (add-hook 'web-mode-hook 'emmet-mode))

(use-package rainbow-mode
  :ensure t
  :config
  (add-hook 'scss-mode-hook 'rainbow-mode))

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
  (ivy-mode t))

(use-package yasnippet
  :ensure t
  :config
  (setq yas-snippet-dirs
        '("~/projects/emacs/snippets" ;; the yasmate collection
          "~/projects/emacs/yasnippet-snippets"))
  (define-key yas-minor-mode-map (kbd "<tab>") nil)
  (define-key yas-minor-mode-map (kbd "TAB") nil)
  (define-key yas-minor-mode-map (kbd "<C-tab>") 'yas-expand)
  (yas-global-mode t))

(use-package which-key
  :ensure t
  :config
  (which-key-mode t))

(use-package magit
  :ensure t
  :config
  (global-set-key (kbd "C-x g") 'magit-status))

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
    (add-hook 'before-save-hook 'gofmt-before-save))
  (add-hook 'go-mode-hook 'my-go-mode-hook))

(use-package go-eldoc
  :ensure t
  :config
  (add-hook 'go-mode-hook 'go-eldoc-setup))

(use-package flycheck
  :ensure t
  :config
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
  (helm-add-action-to-source "Insert line" 'my-insert-line helm-source-do-ag))

(use-package anzu
  :init
  :ensure t
  :config
  (setq anzu-cons-mode-line-p nil)
  (global-anzu-mode +1))

(use-package spaceline-config
  :ensure spaceline
  :config
  (with-no-warnings
    (spaceline-helm-mode t)
    (spaceline-install
      '((evil-state :face highlight-face)
        projectile-root
        '(buffer-id buffer-modified remote-host)
        ;; point-position
        ;; column
        buffer-position
        anzu
        auto-compile
        (process :when active)
        ;; (minor-modes :when active)
        (mu4e-alert-segment :when active)
        (erc-track :when active)
        (org-pomodoro :when active)
        ;; (org-clock :when active)
        ((flycheck-error flycheck-warning flycheck-info)
         :when active))

      '((org-clock :when active)
        major-mode
        (python-pyvenv :fallback python-pyenv)
        purpose
        (battery :when active)
        selection-info
        (global :when active)
        (version-control :when active)
        ;; buffer-size
        )))
  (add-hook 'focus-in-hook
              'force-mode-line-update t)
  (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state)
  (setq-default mode-line-format '("%e" (:eval (spaceline-ml-main)))))

(use-package tide
  :ensure t
  :functions (setup-tide-mode evil--jumps-push)
  :config
  (defun setup-tide-mode ()
    (interactive)
    (tide-setup)
    (define-key evil-normal-state-map (kbd ", g d") 'tide-jump-to-definition)
    (define-key evil-normal-state-map (kbd ", g r") 'tide-references)
    (flycheck-mode +1)
    (setq flycheck-check-syntax-automatically '(save mode-enabled))
    (eldoc-mode +1)
    (tide-hl-identifier-mode +1)
    (company-mode +1)
    (editorconfig-apply))
  (advice-add 'tide-move-to-location :before (lambda (_) (evil--jumps-push)))
  (add-hook 'typescript-mode-hook #'setup-tide-mode)
  (add-hook 'web-mode-hook
            (lambda ()
              (when (string-equal "tsx" (file-name-extension buffer-file-name))
                (setup-tide-mode)))))

(use-package git-gutter-fringe
  :ensure t
  :config
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

;; (defun projectile-sort-files (files)
;;   (let* ((project-root
;;           (projectile-project-root))
;;          (project-close-files
;;           (-intersection
;;            files
;;            (-map
;;             (lambda (full-path)
;;               (replace-regexp-in-string project-root "" full-path))
;;             (directory-files default-directory t))
;;            )))
;;     (append project-close-files
;;             (projectile-difference files project-close-files))))

(use-package paredit
  :ensure t
  :config
  (define-key evil-normal-state-map "\C-c\C-h" 'paredit-splice-sexp-killing-backward)
  (define-key evil-normal-state-map "\C-c\C-l" 'paredit-splice-sexp-killing-forward)
  (add-hook 'clojure-mode-hook 'paredit-mode)
  (add-hook 'clojurescript-mode-hook 'paredit-mode)
  (add-hook 'emacs-lisp-mode-hook 'paredit-mode))

(use-package dired+
  :ensure t
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
  :config)

(use-package org
  :ensure t
  :config
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
  :config
  (defun my-elpy-mode-hook ()
    (define-key evil-normal-state-map (kbd ", g d") 'elpy-goto-definition))
  (add-hook 'elpy-mode-hook 'my-elpy-mode-hook)
  (elpy-enable))

