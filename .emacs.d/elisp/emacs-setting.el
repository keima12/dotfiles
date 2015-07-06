(setq ring-bell-function 'ignore);; ビープ音の消去
(setq auto-save-default nil);; 自動保存を行わない
(server-start);; emacs サーバを有効にし、emacsが複数起動しないようにする

;;----------------------------------------
;;redo+.elを使ってredo機能をemacsに追加する
;;----------------------------------------
(require 'redo+ nil t)


;;---------------------------------------------
;; バックアップファイルの保存先を.emacs.d/backwupに設定する
;;---------------------------------------------
(setq make-backup-files t)
(setq backup-directory-alist
  (cons (cons "\\.*$" (expand-file-name "~/.emacs.d/backup"))
    backup-directory-alist))
