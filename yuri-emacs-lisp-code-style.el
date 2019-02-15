;;; yuri-emacs-lisp-code-style.el --- Mo Xian Emacs-Lisp Style Guide


;; This note prioritizes dependency conflicts when encountering dependency conflicts

;;; Glossary:
;; Built-in: Built in Emacs, it does not need to be installed separately
;; Extra: In ELPA or MELPA or other package repositories, it needs to be installed separately
;; General: Without any dependence, can be run alone
;; Code block: Continuous code without any blank lines
;; Commands: Autoload commands, it does not need to `require'

;;; Comments and naming:
;; Heading comments: ";;; "
;; Normal comments: ";; "
;; A blank line between each block
;; Functions: yuri/function-name
;; Private functions: yuri//function-name
;; Variables: yuri-variable-name
;; Private variables: yuri--variable-name

;;; Heading order:
;;; No need to sort the same level
;; Built-in
;; Built-in package
;; Extra package
;; General

;;; Order within the code block:
;; DO NOT need to sort.
;; Just be sure to work.

;;; Order of the code under the heading:
;;; if no heading, it is global order
;; Load files
(require 'yuri-frame-hooks)

;; Built-in variables
(setq gc-cons-threshold 10000000000)
(add-to-list 'auto-mode-alist '("\\.el\\'" . emacs-lisp-mode))

;; Built-in function variables
(fset 'yes-or-no-p 'y-or-n-p)

;; Built-in commands without config
(global-linum-mode 1)

;; Built-in commands with config
(setq-default history-length 1024)
(savehist-mode 1)

;; Built-in packages without config
(require 'package)

;; Built-in packages with config
(require 'uniquify)
(setq uniquify-ignore-buffers-re "^\\*")

;; Extra packages without config
(require-package 'diminish)

;; Extra packages with config
(require-package 'mode-line-bell)
(mode-line-bell-mode)

;; General functions
(defun yuri/disable-transparency (&optional frame)
  "Disable transparency for FRAME.
If FRAME is nil, it defaults to the selected frame."
  (interactive)
  (set-frame-parameter frame 'alpha '(100 . 100)))

;; General key bindings (It's always at the bottom of the file)
(global-set-key (kbd "RET") 'newline-and-indent)

(provide 'yuri-emacs-lisp-code-style)
