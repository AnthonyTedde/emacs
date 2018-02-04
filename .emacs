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
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#282828" "#FAB1AB" "#D1FA71" "#FFA600" "#7b68ee" "#dc8cc3" "#96D9F1" "#F7F7F7"])
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#657b83")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   (quote
	("4f5bb895d88b6fe6a983e63429f154b8d939b4a8c581956493783b2515e22d6d" "3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" "8288b9b453cdd2398339a9fd0cec94105bc5ca79b86695bd7bf0381b1fbe8147" "43c1a8090ed19ab3c0b1490ce412f78f157d69a29828aa977dae941b994b4147" "9d91458c4ad7c74cf946bd97ad085c0f6a40c370ac0a1cbeb2e3879f15b40553" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "12b4427ae6e0eef8b870b450e59e75122d5080016a9061c9696959e50d578057" "18aa799ae149ceed4e337310319ad612b4f2526f058f8fd8ee00b8d8d79ed678" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "2d16f85f22f1841390dfc1234bd5acfcce202d9bb1512aa8eabd0068051ac8c3" "11636897679ca534f0dec6f5e3cb12f28bf217a527755f6b9e744bd240ed47e1" "46fd293ff6e2f6b74a5edf1063c32f2a758ec24a5f63d13b07a20255c074d399" default)))
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
 '(fci-rule-color "#eee8d5")
 '(global-linum-mode t)
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
	(solarized-color-blend it "#fdf6e3" 0.25)
	(quote
	 ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#586e75")
 '(highlight-tail-colors
   (quote
	(("#eee8d5" . 0)
	 ("#B4C342" . 20)
	 ("#69CABF" . 30)
	 ("#69B7F0" . 50)
	 ("#DEB542" . 60)
	 ("#F2804F" . 70)
	 ("#F771AC" . 85)
	 ("#eee8d5" . 100))))
 '(hl-bg-colors
   (quote
	("#DEB542" "#F2804F" "#FF6E64" "#F771AC" "#9EA0E5" "#69B7F0" "#69CABF" "#B4C342")))
 '(hl-fg-colors
   (quote
	("#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3")))
 '(hl-sexp-background-color "#efebe9")
 '(inhibit-startup-screen t)
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(linum-format " %5i ")
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
	("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(package-selected-packages
   (quote
	(jedi-core jedi anaconda-mode company-jedi elpy evil-text-object-python projectile projectile-codesearch projectile-direnv projectile-git-autofetch projectile-variable zenburn-theme web-mode virtualenv sublime-themes solarized-theme smyx-theme rubocop robe rinari rails-new projectile-rails polymode pandoc-mode nyan-mode markdown-mode+ magit leuven-theme jedi-direx ido-vertical-mode haskell-mode gh-md ggtags flymake-ruby flycheck evil-leader ess-smart-underscore ess-smart-equals ess-R-object-popup ess-R-data-view ecb django-theme django-snippets django-mode company bundler autopair auto-complete-auctex auctex ample-theme ac-math)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(pos-tip-background-color "#eee8d5")
 '(pos-tip-foreground-color "#586e75")
 '(scroll-bar-mode nil)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#eee8d5" 0.2))
 '(term-default-bg-color "#fdf6e3")
 '(term-default-fg-color "#657b83")
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
	((20 . "#dc322f")
	 (40 . "#c85d17")
	 (60 . "#be730b")
	 (80 . "#b58900")
	 (100 . "#a58e00")
	 (120 . "#9d9100")
	 (140 . "#959300")
	 (160 . "#8d9600")
	 (180 . "#859900")
	 (200 . "#669b32")
	 (220 . "#579d4c")
	 (240 . "#489e65")
	 (260 . "#399f7e")
	 (280 . "#2aa198")
	 (300 . "#2898af")
	 (320 . "#2793ba")
	 (340 . "#268fc6")
	 (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
	(unspecified "#fdf6e3" "#eee8d5" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#657b83" "#839496")))
 '(xterm-color-names
   ["#eee8d5" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#073642"])
 '(xterm-color-names-bright
   ["#fdf6e3" "#cb4b16" "#93a1a1" "#839496" "#657b83" "#6c71c4" "#586e75" "#002b36"]))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight normal :height 143 :width normal)))))

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
(setq latex-run-command "xelatex")

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

(require 'polymode)							     ;;
(require 'poly-R)							     ;;
(eval-after-load 'ess-site 						     ;;
  '(progn 								     ;;
     (add-to-list 'auto-mode-alist '("\\.[rR]md" . poly-markdown+r-mode)) ;;
     (add-to-list 'auto-mode-alist '("\\.[rR]nw" . poly-noweb+r-mode))))  ;;


(setq andoc-binary "C:/Users/ATE/AppData/Local/Pandoc/pandoc.exe")

;;;;;;;;;;;;;;;;;;;;;;;
;; c++ configuration ;;
;;;;;;;;;;;;;;;;;;;;;;;
(setq-default c-basic-offset 4 c-default-style "linux")
(setq-default tab-width 4 indent-tabs-mode t)

;; autopair for closing brakets
;; (require 'autopair)
;; (autopair-global-mode 1)
;; (setq autopair-autowrap t)

;; ECB
(require 'ecb)
;(require 'ecb-autoloads)
(setq ecb-layout-name "leftright2")
(setq ecb-show-sources-in-directories-buffer 'always)
(setq ecb-compile-window-height 12)

(setq ecb-windows-width 0.20) 
