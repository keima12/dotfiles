;; グローバルキーのキーバインドを設定する
(define-key global-map (kbd "C-m") 'newline-and-indent)  ;; "C-m"を改行+インデントにする
(define-key global-map (kbd "C-t") 'other-window) ;; "C-t" を別ウィンドウへの移動とする
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines);; "C-c l" 行の表示を切り替える
(define-key global-map (kbd "C-h") 'delete-backward-char);; "C-h" をバックスペースにする
(global-set-key (kbd "C-x b") `ibuffer)                  ;; C-x bをibufferに置き換える
(global-set-key (kbd "C-.") 'redo) ;;C-.にredoを割り当てる


