#!/usr/bin/env emacs --batch --script
;; Author: amoblin <amoblin@gmail.com>
;; File Name: generate
;; Create Time: 2013-12-19 12:46:31
;; This file is created from ~Marboo/media/file_init/default.init.el
;; 本文件由 ~Marboo/media/file_init/default.init.el　复制而来

(add-to-list 'load-path "~/.emacs.d/elpa/org-20160215")

;(use-package uniquify)
;(setq uniquify-buffer-name-style 'forward)

(require 'ox-publish)
(setq org-publish-project-alist
      '(
	;; ... add all the components here (see below)...
	("org-notes"
	 :base-directory "."
	 :base-extension "org"
	 :publishing-directory "html"
         :makeindex t
         :index-filename "orgmode-cn.marboo.io"
         :org-id-track-globally nil
         :htmlized-source t
	 :recursive t
	 :publishing-function org-html-publish-to-html
	 :headline-levels 4             ; Just the default for this project.
	 :auto-preamble t
	 )
	("org-static"
	 :base-directory "~/org/"
	 :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
	 :publishing-directory "~/public_html/"
	 :recursive t
	 :publishing-function org-publish-attachment
	 )
	("org" :components ("org-notes"))
      ))
(org-publish-project "org")
