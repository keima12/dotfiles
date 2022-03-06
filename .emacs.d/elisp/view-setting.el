;;;-------------------------------------
;;;表示方法の設定を記述する
;;;-------------------------------------
(column-number-mode t);; 行番号の表示
(line-number-mode 0);; 行番号の表示
(global-linum-mode t);; 行番号の表示
(size-indication-mode t);;ファイルサイズの表示
(setq frame-title-format "%f");;タイトルバーにファイルのフルパスを表示する
(show-paren-mode t);;対応する括弧を強調して表示する
(add-to-list 'default-frame-alist' (alpha . 70)) ;透過モードを設定する


;;--------------------------------------------
;; 選択業を強調する関数を定義し、選択行の強調表示を行う
;;--------------------------------------------
(defface my-hl-line-face
  '((((class color) (background dark t))
    (:background "#191970"))
   (((class color) (background light t))
    (:background "#191970"))
   (t (:bold t)))
  "hl-line's my face")
(setq hl-line-face 'my-hl-line-face)
(global-hl-line-mode t)

;;---------------------------------------
;; カラーテーマの設定
;;---------------------------------------
(when (require 'color-theme nil t)
  (color-theme-initialize)
  (color-theme-dark-laptop))
