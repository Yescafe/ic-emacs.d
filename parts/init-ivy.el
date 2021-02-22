;;; init-ivy.el --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package 'ivy)
(use-package 'counsel)
(use-package 'ivy-rich)

(ivy-mode 1)
(counsel-mode 1)
(ivy-rich-mode 1)

(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

(define-key ivy-minibuffer-map [escape] 'minibuffer-keyboard-quit)

;; delete M-x ^
(with-eval-after-load 'counsel
  (setq ivy-initial-inputs-alist nil))

;; 忽略 counsel 搜索的单词顺序
(setq ivy-re-builders-alist
      '((counsel-rg . ivy--regex-plus)
	(swiper . ivy--regex-plus)
	(swiper-isearch . ivy--regex-plus)
	(t . ivy--regex-ignore-order)))


(provide 'init-ivy)
