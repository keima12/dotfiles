
;;---------------------------------------------
;; load-pathを定義する関数を定義し、ロードパスの追加する
;;---------------------------------------------

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
              (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))
(add-to-load-path "elisp" "conf" "public_repos")

;; 読み込む設定ファイル
(load "package-setting.el")             ;パッケージの設定は最初にかならずおこなう
(load "emacs-setting")
(load "global-key-setting")
(load "view-setting")
(load "input-setting")
(load "AutoComplete-setting")
(load "auto-highlight-symbol-setting")
(load "cua-mode-setting")
(load "python-mode-setting")
