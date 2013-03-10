(require 'package) 
(add-to-list 'package-archives
  '("marmalade" .
    "http://marmalade-repo.org/packages/"))
(package-initialize)
(add-hook 'after-init-hook 'evil-mode)
