;; Begin Org mode specific
(require 'org-install)
;; The following lines are always needed. Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock) ; not needed when global-font-lock-mode is on
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
;;End Or mode specific

;; arg >= 1 enable the menu bar. Menu bar is the File, Edit, Options,
;; Buffers, Tools, Emacs-Lisp, Help
(menu-bar-mode 0)


;; With numeric ARG, display the tool bar if and only if ARG is
;; positive.  Tool bar has icons document (read file), folder (read
;; directory), X (discard buffer), disk (save), disk+pen (save-as),
;; back arrow (undo), scissors (cut), etc.
(tool-bar-mode 0)

(setq inferior-lisp-program "/usr/bin/clisp")
(add-to-list 'load-path "/usr/share/common-lisp/source/slime/")
(require 'slime)
(slime-setup)

(global-font-lock-mode t) 
(show-paren-mode 1) 
(add-hook 'lisp-mode-hook '(lambda () 
      (local-set-key (kbd "RET") 'newline-and-indent))) 