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

