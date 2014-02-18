# Introduction to Sequel Gem

## References

* [Sequel Homepage](http://sequel.jeremyevans.net/index.html){:target="_blank"}

## Goals
A student should be able to:

* understand why we use databases in our web applications
* add gems with version information to a Gemfile
* understand the purpose of a readme file
* allow future team members to quickly get database up and running using database creation scripts and migrations
* show two ways how to list the databases using psql
* change databases using psql
* show the tables in a database using psql
* write a Sequel migration
* use Sequel to add, find, update and delete records in the database
* understand the role of database cleaner in when running the tests
* use save_and_open_page to troubleshoot tests
* understand why we need multiple databases in a web application
* Troubleshooting Heroku applications using `heroku logs`
* Set up a database on Heroku for use with an application
* Have an understanding of environment variables and how they are used on Heroku
* Running commands for a Heroku appication using `heroku run`

## XP practices learned

* Incremental Design
* Team Continuity

## Tech skill learned

* [Bunler gemfiles](http://bundler.io/v1.3/gemfile.html){:target="_blank"}
* [Database Cleaner](http://rubygems.org/gems/database_cleaner){:target="_blank"}
* Sequel Gem
    * [Migrations](http://sequel.jeremyevans.net/rdoc/files/doc/migration_rdoc.html){:target="_blank"}


## Use Sequel in the tested sinatra app (integrate_sequel_into_sinatra repository)

Why? All of the data goes away when we re-start the server.
    * Show example of this.

How do we fix it? Use a database as a [persistent](http://en.wikipedia.org/wiki/Persistence_(computer_science)){:target="_blank"}
store for our data.

1. Create the database to house the data so that others can easily create it.
    * Talk about use of a readme and automation to communicate with a team.
    * `psql -l` pr `\l` to make sure it got created
    * Use `\connect integrate_sequel_into_sinatra` to connect to database
    * Use `\d` to show what is in database

1. Create the `items` table using a migration
    * Migrations only run if they haven't been run in the past.
    * This allows you to incrementally change your data model
    * How do I tell what columns I need?
    * Use `\d` to show the things that got created

1. Integrate the database into the Items class
    * This acts as a data store, aka a place to put our data
    * As the tests run, the database gets "dirty". Tests assume a clean database every time.
        * Using save_and_open_page is your friend to find this
        * How do we fix this?

1. What happens if we add some items to the database and run our tests?
    * How can we fix this?

1. When I push to Heroku, my application breaks viewing items?
    * `heroku logs` to troubleshoot
    * Setting up a database using [Heroku add-ons](https://addons.heroku.com/){:target="_blank"}
    * Configuring the [database url](https://devcenter.heroku.com/articles/heroku-postgresql#connecting-in-ruby){:target="_blank"} using
    [environment variables](http://en.wikipedia.org/wiki/Environment_variable){:target="_blank"}.
    * Running migrations using `heroku run 'sequel -m migrations $HEROKU_POSTGRESQL_WHITE_URL'`

1. Add in a price for an item
    * Where do I start?
    * Do with students help.

## Homework

Convert the URL shortener to use a database instead of the in-memory store.