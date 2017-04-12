;; -*- flycheck-disabled-checkers: (emacs-lisp-checkdoc); -*-

(add-to-list 'custom-theme-load-path "~/projects/emacs/themes")

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
 '(browse-url-browser-function (quote browse-url-chromium))
 '(column-number-mode t)
 '(compilation-message-face (quote default))
 '(cursor-in-non-selected-windows nil)
 '(custom-enabled-themes (quote (jellybeans)))
 '(custom-safe-themes
   (quote
    ("81db5887e21c382fc01aa2932382102a46e2572aff5d6ce0c778f785d9548624" default)))
 '(evil-want-C-u-scroll nil)
 '(exec-path
   (quote
    ("/usr/local/bin" "/usr/bin" "/bin" "/usr/sbin" "/sbin" "/Applications/Emacs.app/Contents/MacOS/bin-x86_64-10_9" "/Applications/Emacs.app/Contents/MacOS/libexec-x86_64-10_9" "/Applications/Emacs.app/Contents/MacOS/libexec" "/Applications/Emacs.app/Contents/MacOS/bin")))
 '(flycheck-disabled-checkers (quote (php-phpcs javascript-jshint)))
 '(fringe-mode (quote (nil . 0)) nil (fringe))
 '(helm-split-window-in-side-p t)
 '(indent-tabs-mode nil)
 '(js-indent-level 2)
 '(js2-include-jslint-globals nil)
 '(js2-strict-missing-semi-warning nil)
 '(js2-strict-trailing-comma-warning nil)
 '(magit-diff-use-overlays nil)
 '(neo-window-position (quote right))
 '(ns-pop-up-frames nil)
 '(ns-use-srgb-colorspace nil)
 '(org-agenda-files (quote ("~/org/home.org")))
 '(org-clock-persist t)
 '(package-selected-packages
   (quote
    (haskell-mode clojure-mode tern evil-numbers neotree all-the-icons ace-link auctex rainbow-mode helm-ag spaceline-config anzu flycheck go-mode transpose-frame markdown-mode wgrep exec-path-from-shell ag helm-dash avy restclient magit emmet-mode which-key yasnippet ivy key-chord evil-leader evil-nerd-commenter evil-surround evil-matchit evil spaceline helm-projectile projectile editorconfig auto-complete git-gutter-fringe web-mode use-package)))
 '(powerline-default-separator (quote arrow))
 '(recentf-max-menu-items 2000)
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
 '(show-trailing-whitespace t)
 '(tab-width 4)
 '(undo-tree-auto-save-history t)
 '(undo-tree-history-directory-alist (backquote ((".*" \, temporary-file-directory))))
 '(web-mode-attr-indent-offset 2)
 '(web-mode-code-indent-offset 2)
 '(web-mode-css-indent-offset 2)
 '(web-mode-enable-auto-pairing t)
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
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Modes
(global-hl-line-mode t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(ido-mode t)

;; Shortcuts
(global-set-key (kbd "M-x") 'helm-M-x)
                                        ; (global-set-key (kbd "C-s") 'swiper)
(global-set-key [f10] 'describe-face)

;;; Packges:
(use-package all-the-icons
  :ensure t)

(use-package neotree
  :ensure t
  :config
  (global-set-key [f8] 'neotree-toggle)
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))

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

(use-package cus-edit
  :config
  (add-hook 'custom-mode-hook
            (lambda ()
              (linum-mode -1))))

(use-package linum
  :config
  (global-linum-mode t))

(use-package css-mode
  :mode ("\\.scss\\'" . scss-mode))

(use-package web-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.vue\\|.twig\\'" . web-mode)))

(use-package auto-complete
  :ensure t
  :init
  :config
  (add-hook 'web-mode-hook
            (lambda()
              (add-to-list 'ac-sources 'ac-source-yasnippet)))
  (ac-config-default)
  (setq ac-use-menu-map t)
  (setq ac-auto-show-menu 0.2)
  (define-key ac-menu-map "\C-n" 'ac-next)
  (define-key ac-menu-map "\C-p" 'ac-previous)
  (ac-linum-workaround)
  (global-auto-complete-mode))

(use-package editorconfig
  :ensure t
  :config
  (editorconfig-mode t))

(use-package projectile
  :ensure t
  :config
  (projectile-mode t)
  (add-to-list 'projectile-other-file-alist '("jsx" "css"))
  (add-to-list 'projectile-other-file-alist '("css" "jsx")))

(use-package helm-projectile
  :ensure t
  :config
  (helm-projectile-on))

(use-package diminish
  :ensure t)

(use-package evil
  :ensure t
  :config
  (define-key evil-normal-state-map "\M-d" 'evil-scroll-up)
  (define-key evil-normal-state-map "\M-d" 'evil-scroll-up)
  (define-key evil-normal-state-map (kbd "Q") 'kill-this-buffer)
  (define-key evil-normal-state-map (kbd "SPC b") 'helm-buffers-list)
  (define-key evil-normal-state-map (kbd "SPC d") 'helm-projectile-find-dir)
  (define-key evil-normal-state-map (kbd "SPC f") 'helm-projectile)
  (define-key evil-normal-state-map (kbd "SPC p") 'helm-projectile-switch-project)
  (define-key evil-normal-state-map (kbd "SPC r") 'helm-recentf)
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
  (define-key evil-motion-state-map "\C-y" 'nil)
  (evil-mode t))

(use-package git-gutter-fringe
  :ensure t
  :config
  (define-key evil-normal-state-map (kbd "] d") 'git-gutter:next-hunk)
  (global-git-gutter-mode))

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
  (add-hook 'web-mode-hook 'emmet-mode))

(use-package rainbow-mode
  :ensure t
  :config
  (add-hook 'scss-mode-hook 'rainbow-mode))

(use-package evil-matchit
  :ensure t
  :config
  (global-evil-matchit-mode t))

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

(use-package avy
  :ensure t
  :config
  (define-key evil-normal-state-map (kbd "s") 'avy-goto-word-or-subword-1))

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
  (diminish 'evil-mc-mode)
  (global-evil-mc-mode))

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

(use-package flycheck
  :ensure t
  :config
  (global-flycheck-mode))

(use-package helm-ag
  :ensure t)

(use-package anzu
  :init
  :ensure t
  :config
  (setq anzu-cons-mode-line-p nil)
  (global-anzu-mode +1))

(use-package spaceline
  :ensure t
  :config
  (use-package spaceline-config)
  (spaceline-helm-mode t)
  (spaceline-install
   '((evil-state :face highlight-face)
     '(buffer-modified buffer-id remote-host)
     point-position
     line-column
     buffer-position
     anzu
     auto-compile
     (process :when active)
     ((flycheck-error flycheck-warning flycheck-info)
      :when active)
     ;; (minor-modes :when active)
     (mu4e-alert-segment :when active)
     (erc-track :when active)
     (org-pomodoro :when active)
     (org-clock :when active)
     nyan-cat)

   '(major-mode
     (python-pyvenv :fallback python-pyenv)
     purpose
     (battery :when active)
     selection-info
     (global :when active)
     (version-control :when active)
     buffer-size
     projectile-root))
  (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state)
  (setq-default mode-line-format '("%e" (:eval (spaceline-ml-main)))))
(put 'downcase-region 'disabled nil)
