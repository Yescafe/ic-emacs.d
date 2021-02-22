;;; init-features.el --- -*- lexical-binding: t -*-
;;; Commentary:

;; 一些通用功能函数

;;; Code:

;; kill buffers
(defun kill-other-buffers ()
    "Kill all other buffers."
    (interactive)
    (mapc 'kill-buffer 
          (delq (current-buffer) 
                (cl-remove-if-not 'buffer-file-name (buffer-list)))))

(defun kill-all-buffers ()
  (interactive)
  (mapc 'kill-buffer (buffer-list)))

;; kill the file visited by buffer
(defun delete-file-visited-by-buffer (buffername)
  "Delete the file visited by the buffer named BUFFERNAME."
  (interactive "b")
  (let* ((buffer (get-buffer buffername))
         (filename (buffer-file-name buffer)))
    (when filename
      (delete-file filename)
      (kill-buffer buffer))))


(provide 'init-features)
