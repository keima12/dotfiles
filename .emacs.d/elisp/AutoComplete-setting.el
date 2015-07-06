;;---------------------------------------
;; Auto Complete Modeの設定
;;---------------------------------------
(when (require 'auto-complete-config)
  (define-key ac-mode-map (kbd "C-c TAB") 'auto-complete)  ;; C-c TABでauto-cmpleteモードを有効にする
  (ac-config-default)
  (setq ac-use-menu-map t)
  (ac-set-trigger-key "TAB")
  (ac-set-trigger-key "<tab>")
  (setq ac-modes                          ; auto-complete-modeにerlang-modeを追加する
  (append ac-modes
    (list 'erlang-mode))))

