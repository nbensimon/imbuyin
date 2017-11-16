# README #

## ImBuyin Documentation ##

Version 1.0

### How do I get set up? ###

Clone down the project

All commands should be run as root (sudo)

### Create a virtual env ###

`pip install virtualenv`

Activate the virtualenv, i.e.:

`mkdir virt_imbuyin/  cd virt_imbuyin/`
`source activate`

### Install Postgres DB ###

[Postgres](https://www.postgresql.org/download/macosx/)

### Install Django ###

`pip install Django`

`pip install psycopg2` -- this is for python postgres package, say that 3 times fast :).

### Deployment instructions ###

Run migrate on the DB

`python manage.py migrate`

### Run the server ###

`python manager.py runserver <port: 8080> `

### How to run tests ###

### Contribution guidelines ###

* Writing tests
* Code review
* Other guidelines

### Who do I talk to? ###

nate_ben@live.com -- Nate Bensimon

[Learn Markdown](https://bitbucket.org/tutorials/markdowndemo)
