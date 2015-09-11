from flask import Flask, render_template, request

app = Flask('__name__')
app.config['DEBUG'] = True


@app.route('/')
def index():
    return render_template('index.html')

@app.route('/robots.txt')
def robots():
    return app.send_static_file('robots.txt')

if __name__ == '__main__':
    app.run()

