;;------------------------------------
;; 入力関係の設定をまとめたファイル
;;
;; 
;;-----------------------------------

(setq-default tab-width 4);;tab文字のサイズを4にする
(setq-default indent-tabs-mode nil);;インデントにタブ文字を使用しない
(set-keyboard-coding-system 'japanese-cp932) ;;キーボード入力の指定

;;------------------------------------
;; デフォルトのエンコーディングをutf-8にする
;;-----------------------------------
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)




