;;; jellybeans-theme.el --- A low contrast color theme for Emacs.

(deftheme jellybeans "Jellybeans color theme")

;;; Color Palette

(defvar jellybeans-colors-alist
  '(("jellybeans-fg"       . "#c5c8c6")
    ("jellybeans-fg-1"     . "#707880")
    ("jellybeans-bg"       . "#1d1f21")
    ("jellybeans-black"    . "#373841")
    ("jellybeans-black-1"  . "#282a2e")
    ("jellybeans-red"      . "#cc6666")
    ("jellybeans-red-1"    . "#a54242")
    ("jellybeans-green"    . "#b5bd68")
    ("jellybeans-green-1"  . "#8c9440")
    ("jellybeans-yellow"   . "#f0c674")
    ("jellybeans-yellow-1" . "#de935f")
    ("jellybeans-blue"     . "#81a2be")
    ("jellybeans-blue-1"   . "#5f819d")
    ("jellybeans-magenta"  . "#b294bb")
    ("jellybeans-magenta-1". "#85678f")
    ("jellybeans-cyan"     . "#8abeb7")
    ("jellybeans-cyan-1"   . "#5e8d87")))

(defmacro jellybeans-with-color-variables (&rest body)
  "`let' bind all colors defined in `jellybeans-colors-alist' around BODY.
Also bind `class' to ((class color) (min-colors 89))."
  (declare (indent 0))
  `(let ((class '((class color) (min-colors 89)))
         ,@(mapcar (lambda (cons)
                     (list (intern (car cons)) (cdr cons)))
                   jellybeans-colors-alist))
     ,@body))

;;; Theme Faces
(jellybeans-with-color-variables
  (custom-theme-set-faces
   'jellybeans
   ;; basic coloring
   `(button ((t (:foreground ,jellybeans-blue))))
   `(link ((t (:foreground ,jellybeans-yellow :underline t :weight bold))))
   `(link-visited ((t (:foreground ,jellybeans-yellow-1 :underline t :weight normal))))
   `(default ((t (:foreground ,jellybeans-fg :background ,jellybeans-bg))))
   `(cursor ((t (:foreground ,jellybeans-bg :background ,jellybeans-fg))))
   `(escape-glyph ((t (:foreground ,jellybeans-yellow :weight bold))))
   `(fringe ((t (:foreground ,jellybeans-fg :background ,jellybeans-bg))))
   `(header-line ((t (:foreground ,jellybeans-yellow
                                  :background ,jellybeans-bg
                                  :box (:line-width -1 :style released-button)))))
   `(highlight ((t (:background ,jellybeans-bg))))
   `(success ((t (:foreground ,jellybeans-green :weight bold))))
   `(warning ((t (:foreground ,jellybeans-yellow :weight bold))))
   `(tooltip ((t (:foreground ,jellybeans-fg :background ,jellybeans-bg))))

   `(minibuffer-prompt ((t (:foreground ,jellybeans-fg-1))))
   `(mode-line
     ((,class (:background ,jellybeans-black
                           :foreground ,jellybeans-fg
                           :box nil))
      (t :inverse-video t)))
   `(mode-line-buffer-id ((t (:weight bold))))
   `(mode-line-inactive
     ((t (:foreground ,jellybeans-fg-1
                      :background ,jellybeans-bg
                      :box nil))))
   `(region ((,class (:background ,jellybeans-blue-1))
             (t :inverse-video t)))
   `(secondary-selection ((t (:background ,jellybeans-bg))))
   `(trailing-whitespace ((t (:background ,jellybeans-red))))
   `(vertical-border ((t (:foreground ,jellybeans-fg))))
   ;; font lock
   `(font-lock-builtin-face ((t (:foreground ,jellybeans-fg :weight bold))))
   `(font-lock-comment-face ((t (:foreground ,jellybeans-fg-1))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,jellybeans-fg-1))))
   `(font-lock-constant-face ((t (:foreground ,jellybeans-green))))
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
     ((t (:foreground ,jellybeans-fg
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

   `(linum ((t (:foreground ,jellybeans-fg-1))))

   `(git-gutter:added ((t (:foreground ,jellybeans-green))))
   `(git-gutter:deleted ((t (:foreground ,jellybeans-red))))
   `(git-gutter:modified ((t (:foreground ,jellybeans-magenta))))

   `(c-annotation-face ((t (:inherit font-lock-constant-face))))))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'jellybeans)
