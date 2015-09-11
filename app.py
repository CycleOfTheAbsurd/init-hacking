import os

from flask import Flask, redirect, render_template, request, url_for
from flask.ext.script import Manager, Shell
from flask.ext.sqlalchemy import SQLAlchemy
from flask.ext.wtf import Form
from wtforms import StringField, PasswordField, SubmitField
from wtforms.validators import Required

basedir = os.path.abspath(os.path.dirname(__file__))

app = Flask('__name__')
app.config['DEBUG'] = True
app.config['SQLALCHEMY_DATABASE_URI'] = \
        'sqlite:///' + os.path.join(basedir, 'data.sqlite')
app.config['SQLALCHEMY_COMMIT_ON_TEARDOWN'] = True

manager = Manager(app)
db = SQLAlchemy(app)


class User(db.Model):
    __tablename__ = 'users'
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(64), unique=True)
    password = db.Column(db.String(64))

    def __repr__(self):
        return '<User %r>' % self.username


class Message(db.Model):
    __tablename__ = 'private_messages'
    id = db.Column(db.Integer, primary_key=True)
    sender = db.Column(db.String(64))
    receiver = db.Column(db.String(64))
    message = db.Column(db.String(512))

    def __repr__(self):
        return '<Message %r -> %r: %r>' % (self.sender, self.receiver, self.message)


def create_user(username, password):
    user = User(username=username, password=password)
    db.session.add(user)
    db.session.commit()


@app.route('/')
def index():
    return render_template('index.html')


@app.route('/robots.txt')
def robots():
    return app.send_static_file('robots.txt')


@app.route('/login', methods=['POST'])
def login():
    username = request.form.get('username', None)
    password = request.form.get('password', None)
    if username and password:
        user = User.query.filter_by(username=username)[0]
        if user:
            if user.password == password:
                return redirect('/am_not_singles?admin=0')
            else:
                return redirect(url_for('index'))


@app.route('/am_not_singles')
def singles():
    if request.args.get('admin', None) == '1':
        return render_template("admin_panel.html")
    else:
        return render_template("singles.html")


@app.route('/private_messages/')
def private_messages():
    error = None
    results = []
    mails = []
    to = request.args.get('to', None)
    if to:
        if to == 'user':
            return render_template('pm.html', mails=mails)
        else:
            sqli = "SELECT * FROM private_messages WHERE receiver = '" + to + "';"
            try:
                results = db.engine.execute(sqli)
            except Exception as err:
                 error = err
            for mail in results:
                mails.append(mail)
            return render_template('pm.html', mails=mails, error=error)


@app.route('/dev/')
def dev_index():
    return render_template('dev/index.html')


@app.route('/dev/registration/', methods=['GET', 'POST'])
def dev_registration():
    if request.method == 'GET':
        return render_template('dev/registration.html')
    elif request.method == 'POST':
        username = request.form.get('username', None)
        password = request.form.get('password', None)
        if username and password:
            create_user(username, password)
            return redirect(url_for('index'))


@app.route('/static/<path:path>')
def static_files():
    app.send_static_file(path)


def make_shell_context():
    return dict(app=app, db=db, User=User, Message=Message)


manager.add_command('shell', Shell(make_context=make_shell_context))


if __name__ == '__main__':
    db.create_all()
    manager.run()

