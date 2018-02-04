;;;;;;;;;;;;;;;;;;
;; Autocomplete ;;
;;;;;;;;;;;;;;;;;;
;; General
(require 'auto-complete)
(require 'auto-complete-config)
(add-to-list
 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
(ac-set-trigger-key "TAB")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Autocomplete for latex ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list
 'ac-modes
 'latex-mode)
;; Activate ac-math.
(eval-after-load "latex"
  '(when (featurep 'auto-complete)
     ;; See https://github.com/vspinu/ac-math
     (require 'ac-math)
     (defun ac-latex-mode-setup ()       ; add ac-sources to default ac-sources
       (setq ac-sources
         (append '(ac-source-math-unicode ac-source-math-latex ac-source-latex-commands)
             ac-sources)))
     (add-hook 'LaTeX-mode-hook 'ac-latex-mode-setup)))

;;;;;;;;;;;;;;;;;;;;;;;;
;; Autocomplete for R ;;
;;;;;;;;;;;;;;;;;;;;;;;;
(require 'ess-site)
(require 'ess-eldoc) 
(setq 
 ac-auto-show-menu 1
 ac-candidate-limit nil
 ac-delay 2.0
 ac-disable-faces (quote (font-lock-comment-face font-lock-doc-face))
 ac-ignore-case 'smart
 ac-menu-height 10
 ac-quick-help-delay 2.0
 ac-quick-help-prefer-pos-tip t
 ac-use-quick-help t
 ) 
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Autocomplete for ruby ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;; 
(eval-after-load 'company
  '(push 'company-robe company-backends))
(add-hook 'robe-mode-hook 'ac-robe-setup)
(add-hook 'ruby-mode-hook
	  (lambda ()
	    (setq-local company-backends '((company-robe)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Autocomplete for python ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;; 
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

