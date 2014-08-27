#Carpooling
Carpooling is an app that allows users to set up varous carpool locations and routes.

The project is for [Conventional Rails](http://www.learnhowtoprogram.com/lessons/bus-timetable) for [Epicodus](http://www.epicodus.com/).

##Setup
In your terminal, clone this repo:

```console
$ clone https://github.com/nrbernard/lets-date.git
```

Make sure you've installed [postgres](http://www.postgresql.org/download/) and have started the server:

```console
$ postgres
```

Install all the dependencies:

```console
$ bundle install
```

Set up the databases on your local machine:

```console
$ rake db:create
$ rake db:schema:load
```

Finally, start the rails server:

```console
$ rails s
```
It should now be available at `localhost:3000`.


##Authors
[Nick Bernard](http://nrbernard.com) and [Anna Valkov](http://aavalkov.com)

##License
MIT
