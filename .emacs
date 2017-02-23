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
    ("d7dc7ca588ecc465126a9fbe31257746a7a61f7590bb4c28a55888c53a4122d4" "6483a161a4fde5d663857bbc7977f9e43e2d1d353ed6b5a3a6a07db3b60b23f6" "919cb62fb048d1f69723208c3c9a37b0e657db98e5a447f5d3f61291e206bbaf" "90a1c84970ccce2780e758491e7191d1bb069cef1ec7daeb28c1edde81c8a711" "0a80c4fd9d36cccb1414b25bb6327b4fc469c00eaccf8b2d381cc19d4efd9a7d" default)))
 '(evil-mode-line-format (quote (after . mode-line-front-space)))
 '(evil-want-C-u-scroll nil)
 '(exec-path
   (quote
    ("/usr/local/bin" "/usr/bin" "/bin" "/usr/sbin" "/sbin" "/Applications/Emacs.app/Contents/MacOS/bin-x86_64-10_9" "/Applications/Emacs.app/Contents/MacOS/libexec-x86_64-10_9" "/Applications/Emacs.app/Contents/MacOS/libexec" "/Applications/Emacs.app/Contents/MacOS/bin")))
 '(fringe-mode (quote (nil . 0)) nil (fringe))
 '(helm-split-window-in-side-p t)
 '(indent-tabs-mode nil)
 '(js-indent-level 2)
 '(js2-include-jslint-globals nil)
 '(js2-strict-missing-semi-warning nil)
 '(js2-strict-trailing-comma-warning nil)
 '(magit-diff-use-overlays nil)
 '(ns-pop-up-frames nil)
 '(ns-use-srgb-colorspace nil)
 '(org-agenda-files (quote ("~/org/home.org")))
 '(org-clock-persist t)
 '(package-selected-packages
   (quote
    (wgrep exec-path-from-shell ag helm-dash avy restclient magit git-timemachine emmet-mode which-key yasnippet ivy key-chord evil-leader evil-nerd-commenter evil-surround evil-matchit evil spaceline helm-projectile projectile editorconfig auto-complete git-gutter-fringe web-mode use-package)))
 '(powerline-default-separator (quote arrow))
 '(recentf-max-menu-items 500)
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

;; (spaceline web-mode avy git-gutter-fringe fzf editorconfig ac-php flycheck evil-mc helm-projectile helm-ag git-timemachine auto-org-md counsel swiper ivy which-key php-mode evil-terminal-cursor-changer evil-nerd-commenter evil-surround yasnippet ag magit auto-complete vue-mode emmet-mode jbeans-theme neotree projectile helm key-chord evil-matchit zenburn-theme monokai-theme js2-mode solarized-theme evil color-theme-sanityinc-tomorrow)

;; miscs
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
(setq neo-window-position 'right) ; test
(setq yas-snippet-dirs
      '("~/projects/emacs/snippets" ;; the yasmate collection
        ))

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
(use-package web-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.jsx?\\|.vue\\|.s?css\\|.twig\\'" . web-mode)))

(use-package emmet-mode
  :ensure t
  :after web-mode
  :config
  (add-hook 'web-mode-hook 'emmet-mode))

(use-package git-gutter-fringe
  :ensure t
  :config
  (key-chord-define-global "]d" 'git-gutter:next-hunk)
  (global-git-gutter-mode))

(use-package auto-complete
  :ensure t
  :config
  (auto-complete-mode t))

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

(use-package git-timemachine
  :ensure t)

(use-package diminish
  :ensure t)

(use-package spaceline-config
  :ensure spaceline
  :after diminish which-key
  :config
  (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state)
  (spaceline-spacemacs-theme)
  (spaceline-helm-mode t)
  (diminish 'which-key-mode)
  (diminish 'auto-revert-mode)
  (diminish 'undo-tree-mode)
  (diminish 'editorconfig-mode)
  (diminish 'git-gutter-mode)
  (diminish 'ivy-mode)
  (diminish 'yas-minor-mode))


(use-package evil
  :ensure t
  :after key-chord
  :config
  (key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
  (key-chord-define evil-insert-state-map "kj" 'evil-normal-state)
  (key-chord-define evil-normal-state-map " r" 'helm-recentf)
  (key-chord-define evil-normal-state-map " b" 'helm-buffers-list)
  (key-chord-define evil-normal-state-map " f" 'helm-projectile)
  (define-key evil-normal-state-map (kbd "M-d") 'evil-scroll-up)
  (define-key evil-insert-state-map (kbd "C-h") 'left-char)
  (define-key evil-insert-state-map (kbd "C-l") 'right-char)
  (evil-mode t))

(use-package evil-matchit
  :ensure t
  :after evil
  :config
  (global-evil-matchit-mode t))

(use-package evil-surround
  :ensure t
  :after evil
  :config
  (global-evil-surround-mode t))

(use-package evil-nerd-commenter
  :ensure t
  :after evil
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

(use-package auto-complete
  :ensure t
  :config
  (global-auto-complete-mode))

(use-package key-chord
  :ensure t
  :config
  (key-chord-mode t)
  (key-chord-define-global ",w" 'save-buffer)
  (key-chord-define-global ",e" 'eval-last-sexp)
  (key-chord-define-global ",q" 'kill-this-buffer)
  (key-chord-define evil-normal-state-map " d" 'helm-projectile-find-dir)
  (key-chord-define evil-normal-state-map " p" 'helm-projectile-switch-project)
  (key-chord-define-global "[q" 'previous-error)
  (key-chord-define-global "]q" 'next-error)
  (key-chord-define-global "[b" 'previous-buffer)
  (key-chord-define-global "]b" 'next-error)
  (key-chord-define-global "]f" 'projectile-find-other-file))

(use-package ivy
  :ensure t
  :config
  (ivy-mode t))

(use-package yasnippet
  :ensure t
  :config
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
  :ensure t)

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
  (when (memq window-system '(mac))
  (exec-path-from-shell-initialize)))

(use-package evil-mc
  :ensure t
  :config
  (diminish 'evil-mc-mode)
  (global-evil-mc-mode))
