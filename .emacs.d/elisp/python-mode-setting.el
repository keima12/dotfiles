;; jediの設定
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

      
;; py-autopep8の設定
(require 'py-autopep8)
(add-hook 'python-mode-hook '(lambda () 
                               (define-key python-mode-map (kbd "C-c F") 'py-autopep8)          ;; バッファ全体のコード整形
                               (define-key python-mode-map (kbd "C-c f") 'py-autopep8-region)   ;; 選択リジョン内のコード整形
                               (add-hook 'before-save-hook 'py-autopep8-before-save);; 保存時にバッファ全体を自動整形する
                               ))




;; flymake
(require 'tramp-cmds)
(when (load "flymake" t)
  (defun flymake-pyflakes-init ()
                                        ; Make sure it's not a remote buffer or flymake would not work
    (when (not (subsetp (list (current-buffer)) (tramp-list-remote-buffers)))
      (let* ((temp-file (flymake-init-create-temp-buffer-copy
                         'flymake-create-temp-inplace))
             (local-file (file-relative-name
                          temp-file
                          (file-name-directory buffer-file-name))))
        (list "pyflakes" (list local-file)))))
  (add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pyflakes-init)))

(add-hook 'python-mode-hook
          (lambda ()
            (flymake-mode t)))

;; quickrunの設定
(quickrun-add-command "python"
		      '((:command . "python2"))
		      :override t)
