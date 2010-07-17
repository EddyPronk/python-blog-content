compile:
	env/bin/python ../python-blog/compile.py

deploy:
	rsync -ave ssh deploy/blog/ shell.geekisp.com:www.muftor.com/htdocs/blog