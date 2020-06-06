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
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" default)))
 '(package-selected-packages
   (quote
    (ace-window avy zetteldeft deft elisp-format cython-mode org-roam jinja2-mode org-cliplink elisp-refs dumb-jump diff-hl dash-functional dash counsel company csharp-mode flycheck-aspell pomodoro evil-visualstar persp-mode mmm-mode rst-mode markdown-mode smartparens smartparens-config gruvbox-theme yaml-mode restart-emcas magit yasnippet restart-emacs company-jedi eshell-bookmark hl-todo fic-mode python-black aweshell highlight-indent-guides company-anaconda anaconda-mode anaconda spacemacs-theme dired-narrow persp-projectile perspective evil-escape counsel-projectile moody solarized-theme undo-tree evil-org evil-surround evil-collection evil use-package goto-chg auto-compile))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



