;;;;;;;;;;;;;;;;;;;;;;;;
;; Configuration file ;;
;;;;;;;;;;;;;;;;;;;;;;;; 
;; all packages are available after .emacs file is loaded
;; Following lines activate it before
(setq package-enable-at-startup nil)
(package-initialize)

;;;;;;;;;;
;; Misc ;;
;;;;;;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-command "latex -shell-escape")
 '(ess-R-font-lock-keywords
   (quote
    ((ess-R-fl-keyword:modifiers . t)
     (ess-R-fl-keyword:fun-defs . t)
     (ess-R-fl-keyword:keywords . t)
     (ess-R-fl-keyword:assign-ops . t)
     (ess-R-fl-keyword:constants . t)
     (ess-fl-keyword:fun-calls . t)
     (ess-fl-keyword:numbers . t)
     (ess-fl-keyword:operators . t)
     (ess-fl-keyword:delimiters . t)
     (ess-fl-keyword:= . t)
     (ess-R-fl-keyword:F&T . t)
     (ess-R-fl-keyword:%op% . t))))
 '(global-linum-mode t)
 '(inhibit-startup-screen t)
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)) 

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; (eval-after-load 'ess-mode
;;   define-key evil-normal-state-map)
;;;;;;;;;;;;;;;;;;;;;;;;
;; Package management ;;
;;;;;;;;;;;;;;;;;;;;;;;;
(require 'package)
(add-to-list
 'package-archives
 '("melpa" . "http://melpa.org/packages/") t)

(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list
   'package-archives
   '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)

;;;;;;;;;;;
;; latex ;;
;;;;;;;;;;;
(setq latex-run-command "pdflatex")

(defun self-new-line-after ())
(setq doc-view-ghostscript-program "gswin32c")

;;;;;;;;;;;;
;; Orgmod ;;
;;;;;;;;;;;;
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(put 'upcase-region 'disabled nil)

;;;;;;;;;;;;;;;;;;;;
;; Load init file ;;
;;;;;;;;;;;;;;;;;;;;
(load "~/.emacs.d/ini.el")
(put 'erase-buffer 'disabled nil)

(load "auctex.el" nil t t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; emacs preview options ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;
(set-default 'preview-scale-function 1.2)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Polymode configuration ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; require
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (require 'polymode)							     ;;
;; (require 'poly-R)							     ;;
;; (eval-after-load 'ess-site 						     ;;
;;   '(progn 								     ;;
;;      (add-to-list 'auto-mode-alist '("\\.[rR]md" . poly-markdown+r-mode)) ;;
;;      (add-to-list 'auto-mode-alist '("\\.[rR]nw" . poly-noweb+r-mode))))  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq pandoc-binary "C:/Users/ATE/AppData/Local/Pandoc/pandoc.exe")
