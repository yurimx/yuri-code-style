;;; yuri-emacs-config-code-style.el --- My Emacs Config Code Style

;;; See yuri-emacs-lisp-code-style.el, here are some additional instructions.
;;; See also https://github.com/bbatsov/emacs-lisp-style-guide for some general advice.

;;; General:
;; DO NOT use blank lines between code blocks under the same heading/comment unless it affects reading and/or execution.
;; DO NOT set up separate files for "separate MODE". Instead, it should be classified as "language/feature".
;; DO NOT exceed 80 columns unless necessary.
;; All standalone/interactive functions should have docstring.
;; DO NOT use `defadvice'. Instead, use `define-advice' and `advice-add'.

;;; templates
;; Package
(require-package 'foo)
... startup config ...
(with-eval-after-load 'foo
  (diminish 'foo-mode))                 ; Optional
... init config ...
... after load config ...

(provide 'yuri-emacs-config-code-style)
