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
   ["#272822" "#F92672" "#A6E22E" "#E6DB74" "#66D9EF" "#FD5FF0" "#A1EFE4" "#F8F8F2"])
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (jellybeans)))
 '(custom-safe-themes
   (quote
    ("8adf8588bc70036a936386c36cbeb54094ee99641269a4efd588ec22f5160bb7" "d1b7c3afa5273f92bf472ef2544c0a36829f39166f28152054e275ba485a2672" "6755fa3d0c7998c3fbf409ff819eb137100fc8b71d5dcc55fd35a743d0d47a03" "aa568967910b696d0a6351f93fdc5f58f580ee0ecb3abddd6abc941fb4dd364e" "bf77cf50a731159cecc56f1006c9adfcc2c56fbdeca80b446cf4eca806c4487e" "2399ccfc33f9a48c8d2599e7544d6c39ccefe1b887b2c7931d3b868076ba5c76" "a337f34194308ec0197d7d41b5915f97125b3133e2fd045684cc45bd25dd965d" "de0b7245463d92cba3362ec9fe0142f54d2bf929f971a8cdf33c0bf995250bcf" "3eb93cd9a0da0f3e86b5d932ac0e3b5f0f50de7a0b805d4eb1f67782e9eb67a4" "251348dcb797a6ea63bbfe3be4951728e085ac08eee83def071e4d2e3211acc3" "721bb3cb432bb6be7c58be27d583814e9c56806c06b4077797074b009f322509" "946e871c780b159c4bb9f580537e5d2f7dba1411143194447604ecbaf01bd90c" "962dacd99e5a99801ca7257f25be7be0cebc333ad07be97efd6ff59755e6148f" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "45712b65018922c9173439d9b1b193cb406f725f14d02c8c33e0d2cdad844613" "9d91458c4ad7c74cf946bd97ad085c0f6a40c370ac0a1cbeb2e3879f15b40553" "c7a9a68bd07e38620a5508fef62ec079d274475c8f92d75ed0c33c45fbe306bc" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" default)))
 '(fci-rule-color "#3C3D37")
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
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(package-selected-packages
   (quote
    (airline-themes powerline php-mode evil-terminal-cursor-changer evil-nerd-commenter evil-surround yasnippet ag magit auto-complete vue-mode emmet-mode jbeans-theme neotree git-gutter projectile helm key-chord evil-matchit web-mode-edit-element web-mode zenburn-theme monokai-theme js2-mode solarized-theme evil color-theme-sanityinc-tomorrow)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(pos-tip-background-color "#A6E22E")
 '(pos-tip-foreground-color "#272822")
 '(recentf-max-menu-items 500)
 '(save-place-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(undo-tree-auto-save-history t)
 '(undo-tree-history-directory-alist (backquote ((".*" \, temporary-file-directory))))
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
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
 )

;; UI
(global-hl-line-mode t)
(global-git-gutter-mode t)
(git-gutter:linum-setup)
(add-hook 'prog-mode-hook 'linum-mode)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

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

;; jk to esc
(key-chord-define evil-insert-state-map  "jk" 'evil-normal-state)
(key-chord-define evil-normal-state-map  ",w" 'save-buffer)
(key-chord-define evil-normal-state-map  "\\r" 'helm-recentf)
(key-chord-define evil-normal-state-map  "\\b" 'helm-buffers-list)
(key-chord-define evil-normal-state-map  "\\f" 'projectile-find-file)
(key-chord-define evil-normal-state-map  "\\d" 'projectile-switch-project)
(define-key evil-normal-state-map "Q" 'kill-this-buffer)
(define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)
(define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "C-j") 'evil-window-bottom)
(define-key evil-normal-state-map (kbd "C-k") 'evil-window-top)

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
