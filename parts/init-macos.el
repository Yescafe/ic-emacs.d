;;; init-macos.el --- -*- lexical-binding: t -*-
;;; Commentary:

;; macOS 相关的配置

;;; Code:

(when *macos*
  ;; 修饰键
  ;; 将 Cmd 用作 Super
  (setq mac-command-modifier 'super)
  ;; 将 Option 用作 Meta
  (setq mac-option-modifier 'meta)
  ;; 调整鼠标/触控板滚动
  (setq mouse-wheel-scroll-amount '(
				    1
				    ((shift) . 5)
				    ((control))
				    ))
  ;; macOS 的一些窗口命令
  ;; 切换同软件的另一个窗口
  (global-set-key (kbd "S-`") 'ns-next-frame)
  ;; 系统级隐藏窗口
  (global-set-key (kbd "S-H") 'ns-do-hide-emacs)
  ;; 系统级隐藏其它窗口 Command+Option+H（不启用）
  ;;(global-set-key (kbd "S-_") 'ns-do-hide-others)

  ;; 在 Finder、iTerm 中打开
  (defun open-current-file-in-finder ()
    (interactive)
    (shell-command "open -R ."))
  
  (defun open-current-file-directory ()
    (interactive)
    (shell-command "open ."))

  (defun reveal-in-iterm ()
    (interactive)
    (shell-command "open -a iTerm ."))

  ;; macOS `ls` 指令缺少参数 `--dired`，故改用 GNU 的 `gls`
  (setq dired-use-ls-dired t
        insert-directory-program "/usr/local/bin/gls"
        dired-listing-switches "-aBhl --group-directories-first")
  )


(provide 'init-macos)
