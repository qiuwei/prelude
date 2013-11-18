(unless (package-installed-p 'evil)
  (package-install 'evil))

(require 'evil)

(global-evil-leader-mode)
(evil-mode 1)
(evil-leader/set-leader ",")

(setq evil-shift-width 2)
;; use evil nerd commentator
(evilnc-default-hotkeys)

;; in evil mode we need these keys for navigation
(key-chord-define-global "jj" nil)
(key-chord-define-global "jk" nil)
(key-chord-define-global "jl" nil)
(key-chord-define-global "JJ" nil)

(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
;(key-chord-define-global "z=" 'ispell-word)
(provide 'personal-evil)
