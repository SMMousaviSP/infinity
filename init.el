;;; init.el --- First file that loaded after starting Infinity

;;; Commentary:
;; List of packages and initialize setup for programming languages

;;; Code:

(add-to-list 'load-path (concat (getenv "INFINITY_HOME") "/lib"))

(require 'pacman)

(pacman-init)

(pacman-install
 '(
   paredit                       ;; Something to do with paranthesis -----------
   parinfer                      ;; Change Lisp base languages to python -------
   dracula-theme                 ;; Come to dark side we have cookies ----------
   rainbow-delimiters            ;; Each pair of paranthesis have a unique color
   multiple-cursors              ;; Add multiple cursors feature ---------------
   ;; ido-vertical-mode          ;; Make ido vertical --------------------------
   ;; smex                       ;; Use ido for M-x ----------------------------
   flycheck                      ;; Syntax checking ----------------------------
   expand-region                 ;; Highlight faster ---------------------------
   ace-window                    ;; Work with windows faster -------------------
   windresize                    ;; Resize windows easier ----------------------
   helm                          ;; Auto complete for everything ---------------
   markdown-mode                 ;; Markdown with preview and everything -------
   ))



(require 'editor)
(require 'elisp)

(editor-init)
(elisp-load)

;; (provide 'init)
;;; init.el ends here
