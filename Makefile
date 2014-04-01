update:
	mv -f README.html index.html
	/bin/cp -rf html/* .	

server:
	python -m SimpleHTTPServer
