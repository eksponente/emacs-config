;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(package-selected-packages (quote (material-theme elpy jedi))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(add-hook 'find-file-hook 'linum-mode)

(add-to-list 'load-path "~/.emacs.d/neotree/")
(add-to-list 'load-path "~/.emacs.d/docker/")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(require 'find-file-in-project)

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

(package-initialize)
(elpy-enable)

(setq inhibit-startup-message t) ;; hide the startup message
(load-theme 'material t) ;; load material theme

(global-set-key (kbd "C-x p") 'windmove-up)
(global-set-key (kbd "C-x ;") 'windmove-down)
(global-set-key (kbd "C-x '") 'windmove-right)
(global-set-key (kbd "C-x l") 'windmove-left)
