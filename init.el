;;; init.el --- -*- lexical-binding: t -*-
;;; Commentary:

;; 加载 parts 中的所有组件

;;; Codes:

;; Environments
(defconst *macos* (eq system-type 'darwin))

(require 'init-prepare)
(require 'init-packages)
(require 'init-face)
(require 'init-macos)

(require 'init-ivy)



(setq custom-file (concat user-emacs-directory "/custom.el"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(spacemacs-dark))
 '(package-selected-packages
   '(ivy-rich counsel ivy which-key use-package try spacemacs-theme evil color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
