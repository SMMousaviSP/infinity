;;; editor.el --- Confing for all file types.

;;; Commentary:
;; Load packages for all file types, set theme and variables.

;;; Code:

;; (require 'ido)
;; (require 'ido-vertical-mode)
(require 'flycheck)
(require 'expand-region)
(require 'multiple-cursors)
(require 'ace-window)
(require 'helm-mode)
(require 'helm)

(defun editor-init ()
  "Set variables and default packges for all files."

  ;;; Dracula Theme, Come to Dark Side we have Cookies. ------------------------
  (load-theme 'dracula t)

  ;;; Global Emacs Configuration -----------------------------------------------
  (global-display-line-numbers-mode)
  (menu-bar-mode -1)
  (toggle-scroll-bar -1)
  (tool-bar-mode -1)
  (setq ring-bell-function 'ignore)
  (column-number-mode 1)
  (electric-pair-mode 1)

  ;;; Temporary Files Configuration --------------------------------------------
  (setq create-lockfiles nil)
  (setq backup-directory-alist `(("." . "~/.smmousavisp/env/backup/emacs")))

  ;;; Ido Configuration --------------------------------------------------------
  ;;(ido-mode 1)
  ;;(ido-vertical-mode 1)

  ;;; Flycheck Configuration ---------------------------------------------------
  (global-flycheck-mode)
  (setq-default flycheck-emacs-lisp-load-path 'inherit)

  ;;; Expand Region Configuration ----------------------------------------------
  (global-set-key (kbd "C-=") 'er/expand-region)

  ;;; Multiple Cursors Configuration -------------------------------------------
  (global-set-key (kbd "C->") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-c C-SPC ") 'mc/mark-all-like-this)

  ;;; Ace Window Configuration -------------------------------------------------
  (global-set-key (kbd "M-o") 'ace-window)
  (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))

  ;;; Helm Configuration -------------------------------------------------------
  (helm-mode 1)
  (global-set-key (kbd "M-x") 'helm-M-x)
  (global-set-key (kbd "C-x C-f") 'helm-find-files)
  (define-key helm-map (kbd "TAB") 'helm-execute-persistent-action)
  (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
  (define-key helm-map (kbd "C-z") 'helm-select-action)
  (setq-default helm-candidate-number-limit 50
        ;; Remove extraineous helm UI elements
        helm-display-header-line nil
        helm-mode-line-string nil
        helm-ff-auto-update-initial-value nil
        helm-find-files-doc-header nil
        ;; Default helm window sizes
        helm-display-buffer-default-width nil
        helm-display-buffer-default-height 0.25
        ;; When calling `helm-semantic-or-imenu', don't immediately jump to
        ;; symbol at point
        helm-imenu-execute-action-at-once-if-one nil
        ;; disable special behavior for left/right, M-left/right keys.
        helm-ff-lynx-style-map nil))

  
  

(provide 'editor)
;;; editor.el ends here
