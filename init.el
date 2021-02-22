;;; init.el --- -*- lexical-binding: t -*-
;;; Commentary:

;; 加载 parts 中的所有组件

;;; Codes:

;; Environments
(defconst *macos* (eq system-type 'darwin))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

;; all parts
(require 'init-prepare)
(require 'init-packages)
(require 'init-face)
(require 'init-macos)
(require 'init-features)

(require 'init-ivy)
(require 'init-evil)

(require 'init-magit)
