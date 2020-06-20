;; Configure package.el to include MELPA.
(require 'package)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)

;; Ensure that use-package is installed.
;;
;; If use-package isn't already installed, it's extremely likely that this is a
;; fresh installation! So we'll want to update the package repository and
;; install use-package before loading the literate configuration.
(when (not (package-installed-p 'use-package)) (package-refresh-contents)
  (package-install 'use-package))


(add-to-list 'load-path "~/.emacs.d/elisp")

;; change the default path so we don't store these in init.el, they won't be picked up if not loaded
(setq custom-file (concat user-emacs-directory "custom.el"))
(org-babel-load-file "~/.emacs.d/configuration.org")
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
