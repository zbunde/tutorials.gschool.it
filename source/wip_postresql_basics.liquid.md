# Introduction to relational databases

## References

* [Relational Database](http://en.wikipedia.org/wiki/Relational_database){:target="_blank"}
* [PostgreSql](http://www.postgresql.org/){:target="_blank"}
* [PostgreSql Documentation](http://www.postgresql.org/docs/9.3/static/index.html){:target="_blank"}

## Goals
A student should be able to:

* Understand what a relational database is
* create a new database
* create a new table
* insert data into a table
* display all rows from a table
* display a certain subset of columns for a row
* display specific rows from a table using a where clause
* update a set of rows
* delete one/many rows

## XP practices learned

## Tech skill learned

* PostgreSql
* psql
* SQL

## Installing PostgreSql

Make sure that [Homebrew](http://brew.sh/){:target="_blank"} has the latest formulas and then install PostgreSql.
When you are done, make sure PostgreSql was installed and set it to auto start whenever you computer starts.

{% terminal %}
$ brew update
Updated Homebrew from ddfda9d0 to 1199c138.
$ brew install postgres
==> Installing postgresql dependency: ossp-uuid
** Lots of other output **
==> Installing postgresql
** Lots of other output **
/usr/local/Cellar/postgresql/9.3.2: 2924 files, 39M
$ psql --version
psql (PostgreSQL) 9.3.2
$ ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
$ launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
{% endterminal %}

## Creating users in PostgreSql

Just like you have users on your computer, Postgres allows us to create users that have access to the databases within PostgreSql.
This series of steps will create a user named mike, ask for a password and give it the proper permissions in PostgreSql. You should use your first
name as the user name and password as the password. You will use this username/password combination when we start accessing

{% terminal %}
$ createuser --pwprompt --interactive mike
Enter password for new role:
Enter it again:
Shall the new role be a superuser? (y/n) n
Shall the new role be allowed to create databases? (y/n) y
Shall the new role be allowed to create more new roles? (y/n) y
{% endterminal %}

## Background on relational databases

* Database
* [Tables/Data Definition](http://www.postgresql.org/docs/9.3/static/ddl-basics.html){:target="_blank"}
* Rows
    * Primary key
* Columns
    * [Data types](http://www.postgresql.org/docs/9.3/static/datatype.html){:target="_blank"}
    * [Default values](http://www.postgresql.org/docs/9.3/static/ddl-default.html){:target="_blank"}
    * [Null / Not null](http://www.postgresql.org/docs/9.3/static/ddl-constraints.html#AEN2463){:target="_blank"}
* [Inserting data](http://www.postgresql.org/docs/9.3/static/dml-insert.html){:target="_blank"}
* [Querying data](http://www.postgresql.org/docs/9.3/static/queries-overview.html){:target="_blank"}
    * [Filtering with WHERE](http://www.postgresql.org/docs/9.3/static/queries-table-expressions.html#QUERIES-WHERE){:target="_blank"}
* [Updating data](http://www.postgresql.org/docs/9.3/static/dml-update.html){:target="_blank"}
* [Deleting data](http://www.postgresql.org/docs/9.3/static/dml-delete.html){:target="_blank"}

## Demo (intro_to_sql_demo repository)

Implement SQL to hold the items from the object refactoring homework.

1. Create a new database called 'tested_sinatra'.
    * `psql -d postgres -f create_tested_sinatra_database.sql`
1. Create items table
    * What columns do I need?
    * How do I autoincrement id?
    * `psql -d postgres -f create_items_table.sql`
1. From psql, insert 5 rows of data
1. From psql, display all rows in the items table
1. From psql, display only name column for all rows of data
1. From psql, display one row using where clause
1. From psql, update one row to have a different name
1. From psql, delete one row.


## Homework

1. Create a new database called 'url_shortener'.
1. Create a new table called 'urls'. This table should have the columns that you need to store a shortened URL (id, original_url and count)
    * The id field should be the primary key, should auto increment and should not allow null.
    * The original_url column should not allow null values.
    * The count field should default to 0.
1. Insert 5 rows of data into the 'urls' table.
    * Give each one a different original_url.
    * Give each one a different count.
1. Display all of the rows in the urls table
1. Display one row from the urls table with a specific original_url
1. Update one of the rows to have a new count
1. Delete one row that matches an original_url
