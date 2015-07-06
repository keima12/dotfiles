;; --------------------------------
;; packageの取得先ににMELPAを追加する
;; --------------------------------
(require 'package) 
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize) ;; packageの初期化を必ず最初に行う
