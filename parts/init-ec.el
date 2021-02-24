;;; init-ec.el --- -*- lexical-binding: t -*-
;;; Commentary:

;; 这个插件仍然是给 macOS 用的。
;; https://medium.com/really-learn-programming/configuring-emacs-on-macos-a6c5a0a8b9fa
;; 我参考上面这篇文章做了一个 Dock App 用来启动 Emacs Client。但是无奈窗口不会自动聚焦到 Emacs 上。故复制了这段代码。

;;; Code:

(when (featurep 'ns)
  (defun ns-raise-emacs ()
    "Raise Emacs."
    (ns-do-applescript "tell application \"Emacs\" to activate"))
  (defun ns-raise-emacs-with-frame (frame)
    "Raise Emacs and select the provided frame."
    (with-selected-frame frame
      (when (display-graphic-p)
	(ns-raise-emacs))))
  (add-hook 'after-make-frame-functions 'ns-raise-emacs-with-frame)
  (when (display-graphic-p)
    (ns-raise-emacs)))


(provide 'init-ec)
