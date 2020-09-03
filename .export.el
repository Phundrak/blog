#!/usr/bin/emacs --script
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)
(package-install 'ox-hugo)
(require 'ox-hugo)
(setq org-confirm-babel-evaluate nil
      org-html-validation-link nil)
(let* ((file (expand-file-name "content-org/blog.org")))
  (with-current-buffer (find-file file)
    (org-hugo-export-wim-to-md t nil nil t)))
