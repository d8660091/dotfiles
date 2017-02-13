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
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#151515" "#cf6a4c" "#7F9F7F" "#fad07a" "#7697d6" "#DC8CC3" "#c6b6fe" "#e4e8e5"])
 '(column-number-mode t)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (jellybeans)))
 '(custom-safe-themes
   (quote
    ("9d39d4ca9e85a2047e6f6bf430f5e91fd18bce3959ba89d5395d7832d3e8798b" "dcd22eb1b244838f2b913c3b63f4437824ef01ba6b9a5124a67b31932c118c80" default)))
 '(evil-mode-line-format (quote (before . mode-line-front-space)))
 '(fci-rule-color "#383838")
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#3C3D37" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#3C3D37" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(indent-tabs-mode nil)
 '(ivy-mode t)
 '(js-indent-level 2)
 '(js2-include-jslint-globals nil)
 '(js2-strict-missing-semi-warning nil)
 '(js2-strict-trailing-comma-warning nil)
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#cf6a4c" "#DFAF8F" "#fad07a" "#7F9F7F" "#BFEBBF" "#c6b6fe" "#83a1da" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (ac-php flycheck evil-mc helm-projectile helm-ag git-timemachine auto-org-md evil-snipe counsel swiper ivy which-key php-mode evil-terminal-cursor-changer evil-nerd-commenter evil-surround yasnippet ag magit auto-complete vue-mode emmet-mode jbeans-theme neotree git-gutter projectile helm key-chord evil-matchit web-mode-edit-element web-mode zenburn-theme monokai-theme js2-mode solarized-theme evil color-theme-sanityinc-tomorrow)))
 '(pdf-view-midnight-colors (quote ("#e4e8e5" . "#383838")))
 '(pos-tip-background-color "#A6E22E")
 '(pos-tip-foreground-color "#272822")
 '(projectile-other-file-alist
   (quote
    (("cpp" "h" "hpp" "ipp")
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
     ("gpg" "")
     ("jsx" "css")
     ("css" "jsx"))))
 '(recentf-max-menu-items 500)
 '(safe-local-variable-values
   (quote
    ((eval when
           (require
            (quote rainbow-mode)
            nil t)
           (rainbow-mode 1)))))
 '(save-place-mode t)
 '(show-trailing-whitespace t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(undo-tree-auto-save-history t)
 '(undo-tree-history-directory-alist (backquote ((".*" \, temporary-file-directory))))
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#cf6a4c")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#fad07a")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#99ad6a")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#c6b6fe")
     (280 . "#5e78ab")
     (300 . "#6a87c0")
     (320 . "#7697d6")
     (340 . "#83a1da")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(web-mode-attr-indent-offset 2)
 '(web-mode-code-indent-offset 2)
 '(web-mode-css-indent-offset 2)
 '(web-mode-markup-indent-offset 2)
 '(web-mode-script-padding 0)
 '(web-mode-style-padding 0)
 '(weechat-color-list
   (unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0"))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#151515" :foreground "#e4e8e5" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "PfEd" :family "Source Code Pro")))))

;; UI
(global-hl-line-mode t)
(global-git-gutter-mode t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(which-key-mode)
(scroll-bar-mode -1)
(git-gutter:linum-setup)
(add-hook 'prog-mode-hook 'linum-mode)

(add-to-list 'auto-mode-alist '("\\.jsx?\\|.vue\\|.s?css\\'" . web-mode))
(add-hook 'web-mode-hook  'emmet-mode)
(add-hook 'web-mode-hook  'auto-complete-mode)
(add-hook 'php-mode-hook  'auto-complete-mode)

;;  Put backup files to /tmp/
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Modes
(projectile-mode t)
(global-evil-matchit-mode t)
(evil-mode 1)
(global-evil-surround-mode 1)
(global-evil-leader-mode)
(evilnc-default-hotkeys)
(ido-mode t)
(key-chord-mode 1)
(ivy-mode)
(auto-complete-mode)

;; Shortcuts
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
(key-chord-define evil-insert-state-map "kj" 'evil-normal-state)
(key-chord-define-global ",w" 'save-buffer)
(key-chord-define-global ",e" 'eval-last-sexp)
(key-chord-define-global ",q" 'kill-this-buffer)
(key-chord-define-global "\\r" 'helm-recentf)
(key-chord-define-global "\\b" 'helm-buffers-list)
(key-chord-define-global "\\f" 'helm-projectile)
(key-chord-define-global "\\d" 'helm-projectile-find-dir)
(key-chord-define-global "[q" 'previous-error)
(key-chord-define-global "]q" 'next-error)
(key-chord-define-global "[b" 'previous-buffer)
(key-chord-define-global "]b" 'next-error)
(key-chord-define-global "]f" 'projectile-find-other-file)
(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
(evil-define-key 'insert neotree-mode-map (kbd "RET") 'neotree-enter)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-s") 'swiper)
(evil-leader/set-key
  "ci" 'evilnc-comment-or-uncomment-lines
  "cl" 'evilnc-quick-comment-or-uncomment-to-the-line
  "ll" 'evilnc-quick-comment-or-uncomment-to-the-line
  "cc" 'evilnc-copy-and-comment-lines
  "cp" 'evilnc-comment-or-uncomment-paragraphs
  "cr" 'comment-or-uncomment-region
  "cv" 'evilnc-toggle-invert-comment-line-by-line
  "."  'evilnc-copy-and-comment-operator
  "\\" 'evilnc-comment-operator)

;; neotree
(setq neo-window-position 'right)
(setq neo-smart-open t) ;; jump to current file
(global-set-key [f2] 'neotree)
(global-set-key [f3] 'neotree-find)

;; terminal cursor
(unless (display-graphic-p)
  (evil-terminal-cursor-changer-activate))
(setq evil-motion-state-cursor 'box)  ; █
(setq evil-visual-state-cursor 'box)  ; █
(setq evil-normal-state-cursor 'box)  ; █
(setq evil-insert-state-cursor 'bar)  ; ⎸
(setq evil-emacs-state-cursor  'box)  ; |

;; utils
(global-set-key [f10] 'describe-face)

;; (setq yas-snippet-dirs
;;       '("~/projects/emacs/yasnippet/yasmate/snippets" ;; the yasmate collection
;;         ))

;; (yas-global-mode 1) ;; or M-x yas-reload-all if you've started YASnippet already.
