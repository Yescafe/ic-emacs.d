;;; init-pacakges.el --- -*- lexical-binding: t -*-
;;; Commentary:

;; 换源、包管理

;;; Code:

(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("gnu" . "http://mirrors.ustc.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.ustc.edu.cn/elpa/melpa/")
                         ("melpa-stable" . "http://mirrors.ustc.edu.cn/elpa/melpa-stable/")
                         ("org" . "http://mirrors.ustc.edu.cn/elpa/org/")))

(package-initialize)

(defun use-package (package)
  "使用包。会自动检查包是否已经安装。"
  (unless (package-installed-p package)
    (package-refresh-contents)
    (package-install package))
  ;; 返回值确保包成功安装
  (package-installed-p package)
  )

;; try -- 试用包的工具
(use-package 'try)

(provide 'init-packages)
