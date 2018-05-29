;;; sexy-theme --- a simple theme

;;; Commentary:

;;; Code:
(deftheme sexy "Sexy color theme")

;;; Theme Faces
(let ((sexy-fg       "#c5c8c6")
      (sexy-fg-1     "#9da09e")
      (sexy-fg-2     "#767876")
      (sexy-fg-3     "#4e504f")
      (sexy-bg       "#1d1f21")
      (sexy-black+2  "#5e5f66")
      (sexy-black+1  "#4b4b54")
      (sexy-black    "#373841")
      (sexy-black-1  "#282a2e")
      (sexy-red      "#cc6666")
      (sexy-red-1    "#a54242")
      (sexy-green    "#b5bd68")
      (sexy-green-1  "#8c9440")
      (sexy-yellow   "#f0c674")
      (sexy-yellow-1 "#de935f")
      (sexy-blue     "#81a2be")
      (sexy-blue-1   "#5f819d")
      (sexy-blue-2   "#384d5d")
      (sexy-blue-3   "#2f404d")
      (sexy-magenta  "#b294bb")
      (sexy-magenta-1"#85678f")
      (sexy-cyan     "#8abeb7")
      (sexy-cyan-1   "#5e8d87")
      (sexy-font-height (if (eq system-type 'darwin) 140 105)))
  (custom-theme-set-faces
   'sexy
   ;; basic coloring
   `(button ((t (:foreground ,sexy-blue))))
   `(link ((t (:foreground ,sexy-yellow :underline t :weight bold))))
   `(link-visited ((t (:foreground ,sexy-yellow-1 :underline t :weight normal))))
   `(default ((t (:foreground ,sexy-fg
                              :background ,sexy-bg
                              :family "Source Code Pro"
                              :height ,sexy-font-height))))
   `(cursor ((t (:foreground ,sexy-bg :background ,sexy-fg))))
   `(escape-glyph ((t (:foreground ,sexy-yellow :weight bold))))
   `(fringe ((t (:foreground ,sexy-fg :background ,sexy-bg))))
   `(header-line ((t (:foreground ,sexy-yellow
                                  :background ,sexy-bg
                                  :box (:line-width -1 :style released-button)))))
   `(highlight ((t ())))
   `(lazy-highlight ((t (:background ,sexy-black+1))))
   `(success ((t (:foreground ,sexy-green :weight bold))))
   `(warning ((t (:foreground ,sexy-yellow :weight bold))))
   `(error ((t (:foreground ,sexy-red :weight bold))))
   `(tooltip ((t (:foreground ,sexy-fg :background ,sexy-bg))))

   `(linum ((t (:foreground
                ,sexy-fg-2
                :weight normal
                :background ,sexy-bg
                :underline nil))))
   `(linum-highlight ((t (:foreground ,sexy-fg-2 :weight normal :background ,sexy-bg :inherit nil))))

   `(line-number ((t (:foreground
                ,sexy-fg-2
                :weight normal
                :background ,sexy-bg
                :underline nil))))
   `(line-number-current-line ((t (:foreground ,sexy-fg :weight bold :background ,sexy-bg :inherit nil))))

   `(minibuffer-prompt ((t (:foreground ,sexy-fg-1))))
   `(mode-line ((t (:background ,sexy-black
                                :foreground ,sexy-fg
                                :box nil))
                (t :inverse-video t)))
   `(mode-line-buffer-id ((t (:weight bold))))

   `(powerline-active1 ((t (:inherit mode-line))))
   `(powerline-active2 ((t (:inherit mode-line))))

   `(powerline-inactive1 ((t (:foreground ,sexy-magenta-1 :background ,sexy-bg))))
   `(powerline-inactive2 ((t (:background ,sexy-bg))))
   `(mode-line-inactive
     ((t (:foreground ,sexy-magenta-1
                      :background ,sexy-bg
                      :box nil))))
   `(anzu-mode-line ((t (:foreground ,sexy-red))))
   `(region ((t (:background ,sexy-blue-3))
             (t :inverse-video t)))
   `(secondary-selection ((t (:background ,sexy-magenta-1))))
   `(trailing-whitespace ((t (:background ,sexy-red))))
   `(vertical-border ((t (:foreground ,sexy-fg))))
   ;; font lock
   `(font-lock-builtin-face ((t (:foreground ,sexy-fg :weight bold))))
   `(font-lock-comment-face ((t (:foreground ,sexy-fg-1))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,sexy-fg-1))))
   `(font-lock-constant-face ((t (:foreground ,sexy-cyan))))
   `(font-lock-doc-face ((t (:foreground ,sexy-fg-1))))
   `(font-lock-function-name-face ((t (:foreground ,sexy-yellow))))
   `(font-lock-keyword-face ((t (:foreground ,sexy-blue :weight bold))))
   `(font-lock-negation-char-face ((t (:foreground ,sexy-yellow :weight bold))))
   `(font-lock-preprocessor-face ((t (:foreground ,sexy-blue))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,sexy-yellow :weight bold))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,sexy-green :weight bold))))
   `(font-lock-string-face ((t (:foreground ,sexy-green))))
   `(font-lock-type-face ((t (:foreground ,sexy-blue-1))))
   `(font-lock-variable-name-face ((t (:foreground ,sexy-yellow-1))))
   `(font-lock-warning-face ((t (:foreground ,sexy-yellow-1 :weight bold))))

   ;; plugins
   `(helm-header
     ((t (:foreground ,sexy-fg-1
                      :background ,sexy-bg
                      :underline nil
                      :box nil))))
   `(helm-source-header
     ((t (:foreground ,sexy-fg
                      :background ,sexy-bg
                      :underline nil
                      :weight bold))))
   `(helm-candidate-number ((t (:foreground ,sexy-fg :background ,sexy-black))))
   `(helm-match ((t (:foreground ,sexy-yellow))))
   `(helm-M-x-key ((t (:foreground ,sexy-yellow-1))))
   `(helm-grep-lineno ((t (:foreground ,sexy-yellow-1))))
   `(helm-moccur-buffer ((t (:foreground ,sexy-cyan))))
   `(helm-selection ((t (:inverse-video t))))
   `(helm-buffer-directory ((t (:foreground ,sexy-yellow))))
   `(helm-buffer-not-saved ((t (:foreground ,sexy-red))))
   `(helm-buffer-process ((t (:foreground ,sexy-yellow))))
   `(helm-buffer-size ((t (:foreground ,sexy-fg-1))))
   `(helm-selection-line ((t (:background ,sexy-fg :foreground ,sexy-bg))))

   `(helm-ff-directory ((t (:background ,sexy-bg :foreground ,sexy-blue))))
   `(helm-ff-prefix ((t (:background ,sexy-bg :foreground ,sexy-yellow))))
   `(helm-ff-dotted-directory ((t (:background ,sexy-bg :foreground ,sexy-fg-1))))
   `(helm-ff-executable ((t (:background ,sexy-bg :foreground ,sexy-green))))
   `(helm-history-deleted ((t (:background ,sexy-bg :foreground ,sexy-red))))

   `(ivy-current-match ((t (:foreground ,sexy-bg :background ,sexy-fg))))
   `(ivy-virtual ((t (:weight normal))))
   `(ivy-minibuffer-match-face-1 ((t (:foreground ,sexy-fg))))
   `(ivy-minibuffer-match-face-2 ((t (:weight bold :foreground ,sexy-yellow))))
   `(ivy-minibuffer-match-face-3 ((t (:weight bold :foreground ,sexy-yellow))))
   `(ivy-minibuffer-match-face-4 ((t (:weight bold :foreground ,sexy-yellow))))

   `(isearch
     ((t (:foreground ,sexy-fg
                      :background ,sexy-red-1))))

   `(show-paren-match ((t (:foreground ,sexy-fg :background ,sexy-green-1, :weight bold))))

   `(git-gutter:added ((t (:foreground ,sexy-green))))
   `(git-gutter:deleted ((t (:foreground ,sexy-red))))
   `(git-gutter:modified ((t (:foreground ,sexy-magenta))))

   `(spaceline-evil-normal ((t (:foreground ,sexy-fg :background ,sexy-black+2))))
   `(spaceline-evil-insert ((t (:foreground ,sexy-fg :background ,sexy-green-1))))
   `(spaceline-flycheck-error ((t (:foreground ,sexy-red))))
   `(spaceline-flycheck-warning ((t (:foreground ,sexy-yellow))))
   `(spaceline-flycheck-info ((t (:foreground ,sexy-cyan))))

   `(ido-subdir ((t (:foreground ,sexy-red))))
   `(ido-only-match ((t (:foreground ,sexy-blue))))

   `(eshell-prompt ((t (:foreground ,sexy-fg-1))))

   `(tide-hl-identifier-face ((t (:foreground ,sexy-magenta))))

   `(company-preview ((t (:foreground ,sexy-fg-2 :underline t))))
   `(company-preview-common ((t (:inherit company-preview))))
   `(company-tooltip ((t (:foreground ,sexy-bg :background ,sexy-fg-1))))
   `(company-tooltip-selection ((t (:foreground ,sexy-fg :background ,sexy-black))))
   '(company-tooltip-common
     ((((type x)) (:inherit company-tooltip :weight bold))
      (t (:inherit company-tooltip))))
   '(company-tooltip-common-selection
     ((((type x)) (:inherit company-tooltip-selection :weight bold))
      (t (:inherit company-tooltip-selection))))
   `(company-tooltip-annotation ((t (:foreground ,sexy-red-1))))
   `(company-scrollbar-fg ((t (:background ,sexy-fg-2))))
   `(company-scrollbar-bg ((t (:background ,sexy-black+2))))

   `(tide-hl-identifier-face ((t (:foreground ,sexy-magenta))))

   `(speedbar-highlight-face ((t (:inverse-video t))))

   `(compilation-error ((t (:foreground ,sexy-green))))

   `(js2-function-param ((t (:foreground ,sexy-yellow-1))))
   `(js2-object-property ((t (:foreground ,sexy-yellow-1))))
   `(rjsx-tag ((t (:foreground ,sexy-cyan))))
   `(rjsx-attr ((t (:foreground ,sexy-cyan-1))))
   `(Info-quoted ((t (:slant italic))))

   `(web-mode-html-attr-name-face ((t (:foreground ,sexy-yellow-1))))
   `(sh-heredoc ((t (:foreground ,sexy-yellow))))


   ;; `(highlight-indentation-face ((t (:background ,sexy-green))))
   ;; `(highlight-indentation-current-column-face ((t (:background ,sexy-green))))

  `(c-annotation-face ((t (:inherit font-lock-constant-face))))))

(provide-theme 'sexy)
;;; sexy-theme.el ends here
