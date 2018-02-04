;;;;;;;;;;;;;;;
;; Evil mode ;;
;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/evil")
;; Need to appear BEFORE require 'evil statement.
(setq evil-want-C-u-scroll t)
(require 'evil)
;; Set to 0 to do not lauch EVIL by default:
(evil-mode 1)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Push on ESC replace C-g to switch from M-x to Normal state 		    ;;
;; Fuction given by https://github.com/davvil/.emacs.d/blob/master/init.el  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun minibuffer-keyboard-quit ()
  "Abort recursive edit.
In Delete Selection mode, if the mark is active, just deactivate it;
then it takes a second \\[keyboard-quit] to abort the minibuffer."
  (interactive)
  (if (and delete-selection-mode transient-mark-mode mark-active)
      (setq deactivate-mark  t)
    (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
    (abort-recursive-edit)))
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
(global-set-key [escape] 'evil-exit-emacs-state)

;; Cursor color 
(setq evil-emacs-state-cursor '("red" box))
(setq evil-normal-state-cursor '("green" box))
(setq evil-visual-state-cursor '("orange" box))
(setq evil-insert-state-cursor '("red" bar))
(setq evil-replace-state-cursor '("red" bar))
(setq evil-operator-state-cursor '("red" hollow))

;; Evil leader
(global-evil-leader-mode)
(evil-leader/set-leader ",")
(evil-leader/set-key
  "f" 'find-file
  "b" 'switch-to-buffer
  "k" 'kill-buffer
  "cb" 'comment-box
  "cu" 'comment-or-uncomment-region
  "w" 'save-buffer
  "d" 'scroll-up-command
  "u" 'scroll-down-command)

;; R leader functionality
(evil-leader/set-key
  "rr" 'ess-eval-region
  "rR" 'ess-eval-region-and-go
  "rh" 'ess-display-help-on-object
  "ra" 'ess-display-help-apropos
  "rl" 'ess-eval-line
  "rL" 'ess-eval-line-and-go
  "rp" 'ess-switch-process)

;; Shell leader functionality
(evil-leader/set-key
  ;; Search backward for regexp occurence inside the shell
  "sf" 'comint-backward-matching-input)

;; Following code set j and k to jump on real line and not visual one ;;
(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)
;;;;;;;;;;;;;;;;;
;; Sitch split ;;
;;;;;;;;;;;;;;;;;
(define-key evil-normal-state-map (kbd "<C-j>") 'windmove-down)   
(define-key evil-normal-state-map (kbd "<C-k>") 'windmove-up) 
(define-key evil-normal-state-map (kbd "<C-h>") 'windmove-left)  
(define-key evil-normal-state-map (kbd "<C-l>") 'windmove-right)

;;;;;;;;;;;
;; remap ;;
;;;;;;;;;;;
(eval-after-load "comint"
  '(progn
     (define-key comint-mode-map [up]
       'comint-previous-matching-input-from-input)
     (define-key comint-mode-map [down]
       'comint-next-matching-input-from-input)))

