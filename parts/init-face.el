;;; init-face.el --- -*- lexical-binding: t -*-
;;; Commentary:

;; 脸，或者叫外貌。
;; 这部分负责所有的 GUI、主题、字体等的设置。

;;; Code:

;; 基础 GUI 设置
;; 关闭启动屏幕
(setq inhibit-startup-screen t)
;; 关闭工具栏、滚动条
(tool-bar-mode -1)
(scroll-bar-mode -1)
;; 显示行号
(global-linum-mode 1)
;; 显示时间
(setq display-time-format "%H:%M %m/%d")
(display-time-mode 1)


;; 字体设置
;; 这里使用的是 FiraCode Nerd Font Mono 14 号
(set-frame-font "-*-FiraCode Nerd Font Mono-normal-normal-normal-*-14-*-*-*-m-0-iso10646-1")
(setq default-frame-alist '((font . "-*-FiraCode Nerd Font Mono-normal-normal-normal-*-14-*-*-*-m-0-iso10646-1")))


;; 加载几个常用主题
;; purcell 使用的主题：
(use-package 'color-theme-sanityinc-solarized)
(use-package 'color-theme-sanityinc-tomorrow)
;; spacemacs 使用的主题
(use-package 'spacemacs-theme)

(defun reapply-themes ()
  "取自 purcell 的配置。强制重新加载主题。"
  (dolist (theme custom-enabled-themes)
    (unless (custom-theme-p theme)
      (load-theme theme)))
  (custom-set-variables `(custom-enabled-themes (quote ,custom-enabled-themes))))
(add-hook 'after-init-hook 'reapply-themes)

;; 默认使用的主题
(setq custom-safe-themes t)
(load-theme 'spacemacs-dark)

;; 切换黑白 spacemacs 主题
(defun daynight-toggle ()
  (interactive)
  (let ((theme (car custom-enabled-themes)))
    (cond ((eq theme 'spacemacs-light)
            (setq custom-enabled-themes '(spacemacs-dark))
	    (reapply-themes))
           ((eq theme 'spacemacs-dark)
            (setq custom-enabled-themes '(spacemacs-light))
	    (reapply-themes))
	   )))


(provide 'init-face)
