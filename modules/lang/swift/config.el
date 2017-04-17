;;; lang/swift/config.el

;; TODO Set up emacs task runners for fruitstrap

(def-package! swift-mode
  :mode "\\.swift$"
  :init
  (add-hook 'swift-mode-hook #'flycheck-mode)
  :config
  (set! :repl 'swift-mode #'swift-mode-run-repl) ; TODO test this
  (push 'swift flycheck-checkers))


(def-package! company-sourcekit
  :when (featurep! :completion company)
  :after swift-mode
  :config
  (set! :company-backend 'swift-mode '(company-sourcekit company-yasnippet)))

