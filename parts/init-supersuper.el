;;; init-supersuper.el --- super Super --- -*- lexical-binding: t -*-
;;; Commentary:

;; 超级 Super 键
;; 旨在将 macOS 好用的 Command 修饰键的一些功能迁移到其它操作系统上

;;; Code:

(when (or *linux* *windows*)
  ;; 将 Super 粘滞修饰键绑定到 F7，Hyper 粘滞修饰键绑定到 F8
  (global-set-key [f7] nil)
  (global-set-key [f8] nil)
  (define-key function-key-map [(f7)] 'event-apply-super-modifier)
  (define-key function-key-map [(f8)] 'event-apply-hyper-modifier)

  (global-set-key (kbd "s-q") 'save-buffers-kill-emac)
  (global-set-key (kbd "s-w") 'kill-current-buffer)
  (global-set-key (kbd "s-r") 'isearch-backward)
  (global-set-key (kbd "s-o") 'counsel-find-file)
  (global-set-key (kbd "s-a") 'mark-whole-buffer)
  (global-set-key (kbd "s-s") 'save-buffer)
  (global-set-key (kbd "s-f") 'isearch-forward)
  (global-set-key (kbd "s-g") 'isearch-repeat-forward)
  (global-set-key (kbd "s-k") 'delete-frame)
  (global-set-key (kbd "s-l") 'goto-line)
  (global-set-key (kbd "s-z") 'undo)
  (global-set-key (kbd "s-x") 'kill-region)
  (global-set-key (kbd "s-c") 'kill-ring-save)
  (global-set-key (kbd "s-v") 'yank)
  (global-set-key (kbd "s-n") 'make-frame)
  (global-set-key (kbd "s-m") 'iconify-frame)
  (global-set-key (kbd "s-,") 'customize)
  (global-set-key (kbd "s-0") 'text-scale-adjust)
  (global-set-key (kbd "s--") 'text-scale-adjust)
  (global-set-key (kbd "s-=") 'text-scale-adjust)
  (global-set-key (kbd "s-+") 'text-scale-adjust)

  )


(provide 'init-supersuper)
