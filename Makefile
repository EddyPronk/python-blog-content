compile:
	/home/epronk/blog/env/bin/python compile.py

deploy:
	rsync -ave ssh deploy/blog/ shell.geekisp.com:www.muftor.com/htdocs/blog