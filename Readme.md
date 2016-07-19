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

Install a mysql database, and then create the database patrones:

```sh
create database patrones;
use patrones;
```

In the MySQL console run the sentences of the file **'patrones.sql'**

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


**NOTA:** La guía que utilicé para poner al app en producción es: [How to install and configure django](https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-django-with-postgres-nginx-and-gunicorn), con los siguientes cambios:
1. Cambiar la versión de django por la 1.6
2. Utilizar mysql en lugar de postgresql
3. Clonar este repositorio en lugar de crear uno nuevo
4. Al configurar nginx cambiar la ubicación de static: alias /opt/myenv/static/;
en mi caso por /opt/myenv/patrones/static/;
