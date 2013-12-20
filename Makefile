#!/usr/bin/env make -f
# author: amoblin <amoblin@gmail.com>
# file name: Makefile
# create date: 2013-12-19 13:31:13
# This file is created from ~/.marboo/source/media/file_init/default.init.py

defualt:
	find . -type f -name \*.org | xargs touch

html:
	cp worg/guide/index.html html/worg/guide/index.html

gen:
	./generate.el

.PHONY: gen html
