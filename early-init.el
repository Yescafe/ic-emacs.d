;;; early-init.el --- -*- lexical-binding: t -*-

(setq user-init-file (or load-file-name (buffer-file-name)))
(setq user-emacs-directory (file-name-directory user-init-file))

(add-to-list 'load-path (expand-file-name "parts/" user-emacs-directory))

(provide 'early-init)
