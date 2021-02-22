;;; init-prepare.el --- -*- lexical-binding:t -*-
;;; Commentary:

;; 基础设施。以后一定会合到其他部分。

;;; Code:

;; 将 yes/no 选择改为 y/n
(fset 'yes-or-no-p 'y-or-n-p)

;; 快捷重新加载 init.el
(defun reload-init-file ()
  (interactive)
  (load-file user-init-file))
(global-key-binding (kbd "<f5>") 'reload-init-file)


(provide 'init-prepare)
