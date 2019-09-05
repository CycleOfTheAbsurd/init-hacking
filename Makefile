.PHONY: clean run install

install:
	python3 -m venv ./env
	sed -i "s|/usr/bin|$(CURDIR)/env/bin|" env/pyvenv.cfg
	sh -c 'source env/bin/activate; pip3 install -r requirements.txt; pip3 install gunicorn'

run:
	sh reset.sh
	gunicorn --bind 127.1.33.7:1337 wsgi

clean:
	sh reset.sh
	rm -rf env
