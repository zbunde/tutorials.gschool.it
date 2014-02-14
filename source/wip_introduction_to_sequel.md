# Introduction to Sequel Gem

## References

* [Sequel Homepage](http://sequel.jeremyevans.net/index.html){:target="_blank"}

## Goals
A student should be able to:

* create a gemfile with the Sequel gem version specified
* understand the purpose of a readme file
* allow future team members to quickly get database up and running using database creation scripts and migrations

## XP practices learned

* Incremental Design
* Team Continuity

## Tech skill learned

* [Bunler gemfiles](http://bundler.io/v1.3/gemfile.html){:target="_blank"}
* Sequel Gem
    * [Migrations](http://sequel.jeremyevans.net/rdoc/files/doc/migration_rdoc.html){:target="_blank"}


## Use Sequel in the tested sinatra app (integrate_sequel_into_sinatra repository)

Why? All of the data goes away when we re-start the server.
    * Show example of this.

How do we fix it? Use a database as a [persistent](http://en.wikipedia.org/wiki/Persistence_(computer_science)){:target="_blank"}
store for our data.

Start with

Steps to implement persistent storage:

1. Create the database to house the data so that others can easily create it.
    * Talk about use of a readme and automation to communicate with a team.
    * `psql -l` to make sure it got created
    * Use `\connect integrate_sequel_into_sinatra` to connect to database
    * Use `\d` to show what is in database

1. Create the `items` table using a migration
    * Migrations only run if they haven't been run in the past.
    * This allows you to incrementally change your data model
    * How do I tell what columns I need?
    * Use `\d` to show the stuff that got created

1. Begin to integrate the database into the Items class
    * This acts as a data store, aka a place to put our data
    * As the tests run, the database gets "dirty". Tests assume a clean database every time.
        * Using save_and_open_page is your friend to find this

## Homework

Convert the URL shortener to use a database instead of the in-memory store.