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

(org-babel-load-file "~/.emacs.d/configuration.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" default)))
 '(package-selected-packages
   (quote
    (evil-lispy lispy org-plus-contrib org-fragtog zetteldeft yasnippet yaml-mode writeroom-mode which-key use-package spacemacs-theme spaceline smartparens restart-emacs ranger python-black persp-projectile org-roam org-cliplink markdown-mode key-chord jinja2-mode hl-todo helpful general flycheck exec-path-from-shell evil-visualstar evil-surround evil-org evil-nerd-commenter evil-escape evil-collection eshell-bookmark elisp-format dumb-jump dired-narrow cython-mode csharp-mode counsel-projectile company-restclient auto-compile anaconda-mode ag ace-window)))
 '(safe-local-variable-values (quote ((eval org-latex-preview)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
