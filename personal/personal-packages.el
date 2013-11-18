(require 'prelude-packages)

(defvar personal-packages
  '(switch-window evil-leader evil-matchit evil-nerd-commenter evil-numbers evil-paredit evil-tabs evil-visualstar))

(defun personal-install-packages ()
  (dolist (p personal-packages)
    (unless (package-installed-p p)
      (package-install p))))

(personal-install-packages)

(require 'switch-window)

(provide 'personal-packages)
