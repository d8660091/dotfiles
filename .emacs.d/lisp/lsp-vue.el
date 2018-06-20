;; -*- flycheck-disabled-checkers: (emacs-lisp-checkdoc); -*-
(require 'lsp-mode)

(lsp-define-stdio-client
 ;; This can be a symbol of your choosing. It will be used as a the
 ;; prefix for a dynamically generated function "-enable"; in this
 ;; case: lsp-prog-major-mode-enable
 lsp-vue-mode
 "vue"
 ;; This will be used to report a project's root directory to the LSP
 ;; server.
 (lambda () default-directory)
 ;; This is the command to start the LSP server. It may either be a
 ;; string containing the path of the command, or a list wherein the
 ;; car is a string containing the path of the command, and the cdr
 ;; are arguments to that command.
 '("vls"))

(defun my-web-mode-vue-hook ()
  (when (equal web-mode-engine "vue")
    (lsp-vue-mode-enable)))

(add-hook 'web-mode-hook #'my-web-mode-vue-hook)

(provide 'lsp-vue)
