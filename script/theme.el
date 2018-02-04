;;;;;;;;;;;;;;;;
;; Load theme ;;
;;;;;;;;;;;;;;;;
;; zenburn
(load-theme 'zenburn t)
;; (load-theme 'leuven t)					
;; (load-theme 'ample t)
;; (load-theme 'django t)
;; (load-theme 'smyx t)
;; solarized-light
;; (require 'solarized)
;; (deftheme solarized-light "The light variant of the Solarized colour theme") 
;; (create-solarized-theme 'light 'solarized-light) 
;; (provide-theme 'solarized-light)

;;;;;;;;;;;;;;;
;; Nyan mode ;;
;;;;;;;;;;;;;;;
;; (add-to-list 'load-path "~/.emacs.d/nyan-mode")
(require 'nyan-mode)
(setq-default nyan-wavy-trail t)
(nyan-mode)
(nyan-start-animation)
