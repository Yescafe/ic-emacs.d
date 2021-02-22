;;; early-init.el --- -*- lexical-binding: t -*-

;; 代理设置
(setq url-proxy-services
      '(("http" . "127.0.0.1:7890")
        ("https" . "127.0.0.1:7890")))

(setq user-init-file (or load-file-name (buffer-file-name)))
(setq user-emacs-directory (file-name-directory user-init-file))

(add-to-list 'load-path (expand-file-name "parts/" user-emacs-directory))

(provide 'early-init)
