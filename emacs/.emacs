;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
;; MELPA packages
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(smex evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(set-face-attribute 'default nil :font "Source Code Pro-16")
;; user configs
(tool-bar-mode 0)
(menu-bar-mode 0)
(setq inhibit-startup-screen t)
(setq backup-directory-alist `(("." . "~/.cache/emacssaves")))
(setq vc-follow-symlinks t) ;; should always follow symlinks
(ido-mode 1)

;; Display line numbers globally
(global-display-line-numbers-mode)

;; Smex gives ido-like interface to M-x
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; Evil mode
(evil-mode 1)
(evil-define-key 'motion 'global
  ";" #'evil-ex
  ":" #'evil-repeat-find-char
  "<C-p>" #'find-file
  )
