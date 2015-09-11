import errno
import os
import requests
import sys


BASE_STATIC_URL = "https://static-cdn.ashleymadison.com/"
NEW_BASE_STATIC_URL = "/static/"
STATIC_DIR = 'static'

# http://stackoverflow.com/questions/600268/mkdir-p-functionality-in-python
def mkdir_p(path):
    try:
        os.makedirs(path)
    except OSError as exc: # Python >2.5
        if exc.errno == errno.EEXIST and os.path.isdir(path):
            pass
        else: raise

files_to_fetch = []
data = None

print os.getcwd()

with open(sys.argv[1], 'r') as fd:
    data = fd.read()
    while data.find(BASE_STATIC_URL) != -1:
        index = data.find(BASE_STATIC_URL)
        url = data[index:].split('"', 1)[0]
        files_to_fetch.append(url)
        data = data[index:].split('"', 1)[1]

    data = fd.seek(0)
    data = fd.read()
    data = data.replace(BASE_STATIC_URL, NEW_BASE_STATIC_URL)

with open(sys.argv[1], 'w') as fd:
    fd.write(data)

for url in files_to_fetch:
    resp = requests.get(url)
    content = resp.content

    save_location = url.replace(BASE_STATIC_URL, '')
    save_location = os.path.join(STATIC_DIR, save_location)
    save_location = os.path.join(os.getcwd(), save_location)
    print "Saving %s to %s" % (url, save_location)
    save_dir = os.path.dirname(save_location)

    mkdir_p(save_dir)
    with open(save_location, 'w') as fd:
        fd.write(content)

