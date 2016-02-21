#!/usr/bin/env make -f
# author: amoblin <amoblin@gmail.com>
# file name: Makefile
# create date: 2013-12-19 13:31:13
# This file is created from ~/.marboo/source/media/file_init/default.init.py

doc:
	make gen
	make update

update:
	/bin/cp -rf html/* .	
	/bin/mv -f README.html index.html

default:
	find . -type f -name \*.org | xargs touch

clean:
	find . |grep ~$$ | xargs rm -f

html:
	#mkdir html/worg/guide
	#mkdir html/worg/org-tutorials
	cp {,html/}guide/index.html
	cp {,html/}worg/org-tutorials/OrgTutorial.cn.html

gen:
	./generate.el

server:
	cd html;python -m SimpleHTTPServer

.PHONY: gen html
