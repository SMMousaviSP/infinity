;;; pacman.el --- Install packages automatically

;;; Commentary:
;; Install packages from init.el file

;;; Code:

(require 'package)

(defun pacman-install (packages)
  "Make sure that the given PACKAGES are installed in the system."
  (mapcar 'package-install packages))

(defun pacman-init ()
  "Initilize the package manager to Infinity."
  (setq package-user-dir  (concat (getenv "INFINITY_HOME") "/packages"))
  (add-to-list 'package-archives
         '("melpa" . "http://melpa.org/packages/"))
  (package-initialize))

(provide 'pacman)
;;; pacman.el ends here
