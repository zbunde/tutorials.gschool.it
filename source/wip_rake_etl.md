# Introduction to ETL using Rake

## References

* [ETL](http://en.wikipedia.org/wiki/Extract,_transform,_load){:target="_blank"}
* [CSV](http://en.wikipedia.org/wiki/Comma-separated_values){:target="_blank"}
* [Rake](http://rake.rubyforge.org/){:target="_blank"}

## Goals
A student should be able to:

* understand what ETL is and what it is useful for
* read a CSV file from disk
* define a basic rake task
* create database records from a csv file

## XP practices learned

## Tech skill learned


## [Demo](https://github.com/gSchool/etl-rake-csv-demo){:target="_blank"}

This demo will start with the code we have after integrating Sequel into our [items
app](https://github.com/gSchool/integrate_sequel_into_sinatra/commits/master){:target="_blank"}.

Our goal is to take a CSV file that contains information about the dates that an item
was viewed and load it into our database so that we can display analytics on that data.
This data has been extracted from another system and provided to us as is. We need to
fit this data into our system, either through existing database tables or by creating
new database tables.

As we load this data, if we do not have the item in our database, we should create a record for it
in addition to loading the view data for it.

The CSV file will have the format:
item name1, date viewed
item name2, date viewed
item name1, date viewed

In order to make this procedure easy to run from the command line, we will write a Rake task as the interface
the user will see.

1. Get a basic rake task running that simply prints out what you pass in or a default.
1. How do we test a rake task?
    * Keep code in the rake task as minimal as possible.
    * Write some tests that outline what you think should happen.
1. Testing smaller and smaller chunks of your application
    * Using high level tests don't give detailed feedback
    * Narrowing the scope gives better feedback
    * Do this for the ItemImpressions class.

## Homework

Implement the same thing in the URL shortener

Format of file will be:
URL1, date viewed
URL2, date viewed
URL3, date viewed
URL1, date viewed