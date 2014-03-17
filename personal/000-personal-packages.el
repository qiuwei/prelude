(require 'prelude-packages)

(add-to-list 'package-archives
             '("marmalade" .
               "http://marmalade-repo.org/packages/"))

(package-initialize)

(defvar personal-packages
  '(switch-window evil-leader evil-matchit evil-nerd-commenter evil-numbers evil-paredit evil-tabs evil-visualstar solarized-theme quack))

(defun personal-install-packages ()
  (dolist (p personal-packages)
    (unless (package-installed-p p)
      (package-install p))))

(personal-install-packages)

(require 'switch-window)
(require 'quack)

(provide 'personal-packages)
