;;; jellybeans-theme --- a simple theme

;;; Commentary:

;;; Code:
(deftheme jellybeans "Jellybeans color theme")

;;; Theme Faces
(let ((jellybeans-fg       "#c5c8c6")
      (jellybeans-fg-1     "#9da09e")
      (jellybeans-fg-2     "#767876")
      (jellybeans-fg-3     "#4e504f")
      (jellybeans-bg       "#1d1f21")
      (jellybeans-black+2  "#5e5f66")
      (jellybeans-black+1  "#4b4b54")
      (jellybeans-black    "#373841")
      (jellybeans-black-1  "#282a2e")
      (jellybeans-red      "#cc6666")
      (jellybeans-red-1    "#a54242")
      (jellybeans-green    "#b5bd68")
      (jellybeans-green-1  "#8c9440")
      (jellybeans-yellow   "#f0c674")
      (jellybeans-yellow-1 "#de935f")
      (jellybeans-blue     "#81a2be")
      (jellybeans-blue-1   "#5f819d")
      (jellybeans-magenta  "#b294bb")
      (jellybeans-magenta-1"#85678f")
      (jellybeans-cyan     "#8abeb7")
      (jellybeans-cyan-1   "#5e8d87")
      (jellybeans-font-height (if (eq system-type 'darwin) 140 120)))
  (custom-theme-set-faces
   'jellybeans
   ;; basic coloring
   `(button ((t (:foreground ,jellybeans-blue))))
   `(link ((t (:foreground ,jellybeans-yellow :underline t :weight bold))))
   `(link-visited ((t (:foreground ,jellybeans-yellow-1 :underline t :weight normal))))
   `(default ((t (:foreground ,jellybeans-fg
                              :background ,jellybeans-bg
                              :family "Source Code Pro"
                              :height ,jellybeans-font-height))))
   `(cursor ((t (:foreground ,jellybeans-bg :background ,jellybeans-fg))))
   `(escape-glyph ((t (:foreground ,jellybeans-yellow :weight bold))))
   `(fringe ((t (:foreground ,jellybeans-fg :background ,jellybeans-bg))))
   `(header-line ((t (:foreground ,jellybeans-yellow
                                  :background ,jellybeans-bg
                                  :box (:line-width -1 :style released-button)))))
   `(highlight ((t ())))
   `(lazy-highlight ((t (:background ,jellybeans-black+1))))
   `(success ((t (:foreground ,jellybeans-green :weight bold))))
   `(warning ((t (:foreground ,jellybeans-yellow :weight bold))))
   `(tooltip ((t (:foreground ,jellybeans-fg :background ,jellybeans-bg))))

   `(linum ((t (:foreground ,jellybeans-fg-2 :weight normal :background ,jellybeans-bg :inherit nil))))
   `(linum-highlight ((t (:foreground ,jellybeans-fg-2 :weight normal :background ,jellybeans-bg :inherit nil))))

   `(minibuffer-prompt ((t (:foreground ,jellybeans-fg-1))))
   `(mode-line ((t (:background ,jellybeans-black
                                :foreground ,jellybeans-fg
                                :box nil))
                (t :inverse-video t)))
   `(mode-line-buffer-id ((t (:weight bold))))
   `(powerline-active2 ((t (:background ,jellybeans-black))))
   `(powerline-inactive1 ((t (:foreground ,jellybeans-magenta-1 :background ,jellybeans-bg))))
   `(powerline-inactive2 ((t (:background ,jellybeans-bg))))
   `(mode-line-inactive
     ((t (:foreground ,jellybeans-magenta-1
                      :background ,jellybeans-bg
                      :box nil))))
   `(anzu-mode-line ((t (:foreground ,jellybeans-red))))
   `(region ((t (:background ,jellybeans-blue-1))
             (t :inverse-video t)))
   `(secondary-selection ((t (:background ,jellybeans-magenta-1))))
   `(trailing-whitespace ((t (:background ,jellybeans-red))))
   `(vertical-border ((t (:foreground ,jellybeans-fg))))
   ;; font lock
   `(font-lock-builtin-face ((t (:foreground ,jellybeans-fg :weight bold))))
   `(font-lock-comment-face ((t (:foreground ,jellybeans-fg-1))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,jellybeans-fg-1))))
   `(font-lock-constant-face ((t (:foreground ,jellybeans-cyan))))
   `(font-lock-doc-face ((t (:foreground ,jellybeans-fg-1))))
   `(font-lock-function-name-face ((t (:foreground ,jellybeans-yellow))))
   `(font-lock-keyword-face ((t (:foreground ,jellybeans-blue :weight bold))))
   `(font-lock-negation-char-face ((t (:foreground ,jellybeans-yellow :weight bold))))
   `(font-lock-preprocessor-face ((t (:foreground ,jellybeans-blue))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,jellybeans-yellow :weight bold))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,jellybeans-green :weight bold))))
   `(font-lock-string-face ((t (:foreground ,jellybeans-green))))
   `(font-lock-type-face ((t (:foreground ,jellybeans-blue-1))))
   `(font-lock-variable-name-face ((t (:foreground ,jellybeans-red))))
   `(font-lock-warning-face ((t (:foreground ,jellybeans-yellow-1 :weight bold))))

   ;; plugins
   `(helm-header
     ((t (:foreground ,jellybeans-fg-1
                      :background ,jellybeans-bg
                      :underline nil
                      :box nil))))
   `(helm-source-header
     ((t (:foreground ,jellybeans-fg
                      :background ,jellybeans-bg
                      :underline nil
                      :weight bold))))
   `(helm-candidate-number ((t (:foreground ,jellybeans-blue :background ,jellybeans-black))))
   `(helm-match ((t (:foreground ,jellybeans-yellow))))
   `(helm-selection ((t (:background ,jellybeans-fg :foreground ,jellybeans-bg))))
   `(helm-selection-line ((t (:background ,jellybeans-fg :foreground ,jellybeans-bg))))

   `(ivy-current-match ((t (:foreground ,jellybeans-bg :background ,jellybeans-fg))))
   `(ivy-minibuffer-match-face-1 ((t (:foreground ,jellybeans-fg))))
   `(ivy-minibuffer-match-face-2 ((t (:weight bold :foreground ,jellybeans-yellow))))
   `(ivy-minibuffer-match-face-3 ((t (:weight bold :foreground ,jellybeans-yellow))))
   `(ivy-minibuffer-match-face-4 ((t (:weight bold :foreground ,jellybeans-yellow))))

   `(isearch
     ((t (:foreground ,jellybeans-fg
                      :background ,jellybeans-red-1))))

   `(show-paren-match ((t (:foreground ,jellybeans-fg :background ,jellybeans-green-1, :weight bold))))

   `(git-gutter:added ((t (:foreground ,jellybeans-green))))
   `(git-gutter:deleted ((t (:foreground ,jellybeans-red))))
   `(git-gutter:modified ((t (:foreground ,jellybeans-magenta))))
   `(spaceline-evil-normal ((t (:foreground ,jellybeans-fg :background ,jellybeans-black+2))))
   `(spaceline-evil-insert ((t (:foreground ,jellybeans-fg :background ,jellybeans-green-1))))
   `(ido-subdir ((t (:foreground ,jellybeans-red))))
   `(ido-only-match ((t (:foreground ,jellybeans-blue))))

   `(eshell-prompt ((t (:foreground ,jellybeans-fg-1))))

   `(tide-hl-identifier-face ((t (:foreground ,jellybeans-yellow))))

   `(company-preview ((t (:foreground ,jellybeans-fg-2 :underline t))))
   `(company-preview-common ((t (:inherit company-preview))))
   `(company-tooltip ((t (:foreground ,jellybeans-bg :background ,jellybeans-fg-1))))
   `(company-tooltip-selection ((t (:foreground ,jellybeans-fg :background ,jellybeans-black))))
   '(company-tooltip-common
     ((((type x)) (:inherit company-tooltip :weight bold))
      (t (:inherit company-tooltip))))
   '(company-tooltip-common-selection
     ((((type x)) (:inherit company-tooltip-selection :weight bold))
      (t (:inherit company-tooltip-selection))))
   `(company-tooltip-annotation ((t (:foreground ,jellybeans-red-1))))
   `(company-scrollbar-fg ((t (:background ,jellybeans-fg-2))))
   `(company-scrollbar-bg ((t (:background ,jellybeans-black+2))))

  `(c-annotation-face ((t (:inherit font-lock-constant-face))))))

(provide-theme 'jellybeans)
;;; jellybeans-theme.el ends here
