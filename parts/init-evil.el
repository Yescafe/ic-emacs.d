;;; init-evil.el --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package 'evil)
(use-package 'evil-collection)

(setq evil-want-integration t)
(setq evil-want-keybinding nil)
(require 'evil)
 (when (require 'evil-collection nil t)
   (evil-collection-init)) 

;;(evil-collection-magit-setup)

;;(evil-mode 1)


(provide 'init-evil)
