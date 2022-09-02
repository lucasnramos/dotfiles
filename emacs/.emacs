;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; user configs
(tool-bar-mode 0)
(menu-bar-mode 0)
(display-line-numbers-mode 1)
(line-number-mode 1)
(ido-mode 1)
(setq backup-directory-alist `(("." . "~/.cache/emacssaves")))
