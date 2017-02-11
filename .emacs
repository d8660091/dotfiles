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
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (jellybeans)))
 '(custom-safe-themes
   (quote
    ("705d431b4084bbded9b856474de223f93d05a7c47324ba5fe19c194c1e8177ef" "8bd8d1b9e7ab0f37fa5dfdb573d28f724d250106ecbef3c7f96a8c2dc154b26e" "fe6fc827d5982062f348bbadfd5edd80dac2e1aebae8e74719c0a38efb614877" "" default)))
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
 '(js-indent-level 2)
 '(js2-include-jslint-globals nil)
 '(js2-strict-missing-semi-warning nil)
 '(js2-strict-trailing-comma-warning nil)
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#cf6a4c" "#DFAF8F" "#fad07a" "#7F9F7F" "#BFEBBF" "#c6b6fe" "#8fbfdc" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (which-key php-mode evil-terminal-cursor-changer evil-nerd-commenter evil-surround yasnippet ag magit auto-complete vue-mode emmet-mode jbeans-theme neotree git-gutter projectile helm key-chord evil-matchit web-mode-edit-element web-mode zenburn-theme monokai-theme js2-mode solarized-theme evil color-theme-sanityinc-tomorrow)))
 '(pdf-view-midnight-colors (quote ("#e4e8e5" . "#383838")))
 '(pos-tip-background-color "#A6E22E")
 '(pos-tip-foreground-color "#272822")
 '(recentf-max-menu-items 500)
 '(safe-local-variable-values
   (quote
    ((eval when
	   (require
	    (quote rainbow-mode)
	    nil t)
	   (rainbow-mode 1)))))
 '(save-place-mode t)
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
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#7697d6")
     (340 . "#8fbfdc")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(web-mode-attr-indent-offset 2)
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
(setq mode-line-format '("%e" evil-mode-line-tag mode-line-front-space mode-line-mule-info mode-line-client mode-line-modified mode-line-remote mode-line-frame-identification mode-line-buffer-identification "   " mode-line-position (vc-mode vc-mode) "  " mode-line-modes mode-line-misc-info mode-line-end-spaces))

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . web-mode))
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
(evilnc-default-hotkeys)
(ido-mode t)
(key-chord-mode 1)

;; Shortcuts
(key-chord-define-global "jk" 'evil-normal-state)
(key-chord-define-global ",w" 'save-buffer)
(key-chord-define-global ",e" 'eval-last-sexp)
(key-chord-define-global ",q" 'kill-this-buffer)
(key-chord-define-global "\\r" 'helm-recentf)
(key-chord-define-global "\\b" 'helm-buffers-list)
(key-chord-define-global "\\f" 'projectile-find-file)
(key-chord-define-global "\\d" 'projectile-switch-project)

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
)
(add-hook 'web-mode-hook  'my-web-mode-hook)

;; recent files
(recentf-mode 1)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)
(global-set-key (kbd "M-x") 'helm-M-x)
(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)

;; neotree
(setq neo-window-position 'right)
(setq neo-smart-open t) ;; jump to current file
(global-set-key [f8] 'neotree-toggle)

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
