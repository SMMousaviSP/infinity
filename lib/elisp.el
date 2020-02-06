;;; elisp.el --- Load packages for elisp files

;;; Commentary:
;; Load packages for elisp files and add a hook to elisp major mode

;;; Code:

(require 'paredit)
(require 'parinfer)
(require 'rainbow-delimiters)

(defun elisp--setup ()
  "Elisp setup."
  (paredit-mode t)
  (parinfer-mode t)
  (rainbow-delimiters-mode t))

(defun elisp-load ()
  "Load elisp setup."
  (interactive)
  (add-hook 'emacs-lisp-mode-hook 'elisp--setup)
  (message "Elisp setup has been done!"))

(provide 'elisp)
;;; elisp.el ends here
