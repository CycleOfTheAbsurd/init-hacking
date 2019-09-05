.PHONY: clean run install

install:
	python3 -m venv ./env
	sh -c 'source env/bin/activate; python -m pip install -r requirements.txt; python -m pip install gunicorn'

run:
	sh reset.sh
	gunicorn --bind 127.1.33.7:1337 wsgi

clean:
	sh reset.sh
	rm -rf env
