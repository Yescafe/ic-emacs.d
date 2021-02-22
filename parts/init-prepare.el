;;; init-prepare.el --- -*- lexical-binding:t -*-
;;; Commentary:

;; 基础设施。以后一定会合到其他部分。

;;; Code:

;; 关闭备份
(setq make-backup-files nil)

;; 将 yes/no 选择改为 y/n
(fset 'yes-or-no-p 'y-or-n-p)

;; 括号匹配
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; 选中文本替换
(delete-selection-mode 1)

;; 快捷重新加载 init.el
(defun reload-init-file ()
  (interactive)
  (load-file user-init-file))
(global-key-binding (kbd "<f5>") 'reload-init-file)

;; 关闭警告音
(setq ring-bell-function 'ignore)


(provide 'init-prepare)
