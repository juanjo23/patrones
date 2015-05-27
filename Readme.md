#Patrones

A python app for evaluating the optimal route to the implementation of sofware process improvement.

##Running in a local server

Make sure you have Python [installed properly](http://install.python-guide.org). 

Optionaly you can use [virtualenv](https://virtualenv.pypa.io/) to have insolated python instalations

```sh
$ git clone git@github.com:juanjo23/patrones.git
$ cd patrones
$ pip install -r requirements.txt
```

Install (if you don't have any yet) a mysql database, and then execute the command:

```sh
create database patrones;
```

Run the sentences in the file 'patrones.sql'

Sincroniza la base de datos:

```
$ python manage.py syncdb
```

If some tables not synced (use migrations):

```
python manage.py migrate
```

Now you can run the server with command:

```
python manage.py runserver
```

Open in your browser the page 127.0.0.1:8000

Your app should now be running on [localhost:8000](http://localhost:8000/).


##Requeriments for production

Operating System:

- Distro Linux (such Debian or Ubuntu)

Web Sever:

- NGINX

Programming Language:

- Python 2.7.x

Database:

- Mysql Server
- Controlador mysql-python

Virtual enviroment:

- virtualenv

Framework:

- Django 1.6
- Modulos django (requeriments.txt)

Python WSGI HTTP Server:

- Gunicorn (install from pip)
