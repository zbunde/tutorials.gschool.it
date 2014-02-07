# Testing a Sinatra App

## References
* [Growing Object Oriented Software Guided by Tests](http://www.amazon.com/Growing-Object-Oriented-Software-Guided-Tests/dp/0321503627){:target="_blank"}
* [Capybara](https://github.com/jnicklas/capybara){:target="_blank"}
* [Travis CI website](https://travis-ci.org/){:target="_blank"}
* [Travis CI docs](http://docs.travis-ci.com/){:target="_blank"}
* [Git Log](http://git-scm.com/book/en/Git-Basics-Viewing-the-Commit-History){:target="_blank"}
* [Git Remotes](http://git-scm.com/book/en/Git-Basics-Working-with-Remotes){:target="_blank"}
* [Git remote branches](http://git-scm.com/book/en/Git-Branching-Remote-Branches){:target="_blank"}
* [Git merging](http://git-scm.com/book/en/Git-Branching-Basic-Branching-and-Merging){:target="_blank"}

## Goals
A student should be able to:

* Understand what an acceptance test is
* Write capybara based acceptance tests for the Sinatra spike
* Understand what Continuous integration is
* Use Travis CI to run their test suites in cloud
* Understand the difference between master remote branch and master local branch
* Integrate code from GitHub into their local master branch using merge

## XP practices learned

* Test First Development
* Continuous Integration
* Whole Team
* Incremental Design
* Shared Code

## Tech skill learned

* Acceptance tests
* Capybara
* Travis CI
* Git remotes, branches and merging

## Acceptance tests

* End-to-end test
    * Some people use other words to describe this type of test, remember the concept of being user facing
* Exercises user facing interface
    * Helps us understand and codify the needs of the user
    * Measure of external quality, how well the system meets user needs
* Treats system as a [black box](http://en.wikipedia.org/wiki/Black_box_testing){:target="_blank"}
* Helps us build "walking skeleton", thinnest slice of functionality that works end to end and adds user facing value
* Gives you the confidence that the system still works after making changes

## Capybara

* Ruby tool to write acceptance level tests
* English like [domain specific language (DSL)](http://en.wikipedia.org/wiki/Domain-specific_language){:target="_blank"}
    * Domain is interacting with a web site
* Can be used to easily test apps running locally as well as remote apps.
    * Show demo of testing external application (capybara_with_external_application repository)

## Continuous Integration

* When we start to work on teams, we:
    * need a way to make sure our code plays well with others code.
    * need a way to validate that the code works on another machine.
* We allow an external service to tell us this.
* We will use Travis CI since:
    * it integrates well with GitHub
    * it is free for open source projects

## Demo (tested_http_basics_with_sinatra repository)
* Fork and clone the repository
    * Get a volunteer to also clone the fork
* Initialize RSpec
* Write tests for adding a new item
    * Use `save_and_open_page` to see what tests are seeing
    * Visit the home page
    * View the items
    * You want to add an item
    * Fill in the item information
    * Submit the form
    * Confirm that the item got added to the items list
        * Show use of `within`
* Push to GitHub
* Get tests building on Travis CI once on GitHub
    * `.travis.yml` file
    * Log into Travis CI site
    * Turn on CI for a specific repository
    * Viewing build status
* Pull code from GitHub onto volunteer machine.
    * Connect via ScreenHero
    * Show current state of origin remote, master branch using `git log origin/master`.
    * Show how local master branch matches this view using `git log master`.
    * Show how to update your view of the remote using `git fetch origin`.
    * New state of the remote using `git log origin/master`.
    * Show master branch now differs using `git log master`.
    * Make them match using `git merge origin/master` and `git log master`.

## Homework

Your homework is to complete the test first development of the spike application, without using
any of the code that you wrote for the spike.

You will pair on this assignment, switching machines after each item list item below.

Before switching machines, make sure that the Travis CI build for is green.

1. Fork the demo repository to one person's GitHub account and pull down the code locally onto each machine

1. Implement the demo tests and get them green.

1. Write tests for what happens when you click the "Show Item" link
for the item you created.
    * These steps should check for the presence of the text in the h1 tag on the show page.
    index page in the same scenario.
    * These tests should continue immediately under test that check for the name on the
    * Do not implement the tests for clicking the delete button or the edit link.

1. Write tests for what happens when you click the "edit" link on the show page.
    * These steps should continue immediately under the tests for showing an item.
    * These tests should be similar to the add test.
    * The result of this test should be checking for the presence of the new name
    in the items list. It should also check for the absence of the old name.

1. Write tests for what happens when you click the "delete" button.
    * These steps should continue immediately under the tests for showing an item.
    * They should start with navigating back to the show screen.
    * This test should check for the absence of the name in the item list.



