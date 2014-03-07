# Ruby Basics

## Goals

After this exercise, a student will be able to:

* Run ruby files from the command line
* Write programs using basic ruby concepts from previous knowledge and information found in reference material
* Use high level, [acceptance tests](http://www.extremeprogramming.org/rules/functionaltests.html){:target="_blank"} to guide development

## XP practices learned

* Whole Team
* Test First Programming

## Tech skill learned

* Ruby language constructs
* Running acceptance tests from the command line
* Running code using irb to try things out
* Running code from a file at the command line

## Resources

**Warning: Some of the online material may not be compatible with your version of Ruby but it is free.**

* Online Materials
    * [Learn to Program Website](http://pine.fm/LearnToProgram/){:target="_blank"}
    * [Learn Ruby the Hard Way](http://ruby.learncodethehardway.org/){:target="_blank"} - when you read "function" substitute the word "method"
    * [Ruby Essentials](http://www.techotopia.com/index.php/Ruby_Essentials){:target="_blank"}
    * [Pickaxe Book](http://ruby-doc.com/docs/ProgrammingRuby/){:target="_blank"}
    * [Ruby Language Documentation page](https://www.ruby-lang.org/en/documentation/){:target="_blank"} - a list of of other references

* Ebooks/Physical Books for Purchase
    * [Learn to Program](http://pragprog.com/book/ltp2/learn-to-program){:target="_blank"} - not a complete reference but great for beginners. Suited for reading cover to cover.
    * [Pickaxe Book](http://pragprog.com/book/ruby4/programming-ruby-1-9-2-0){:target="_blank"} - a pretty complete language reference book. Not meant for reading cover to cover.

## Demo

Greetings

1. Import and prioritize the stories
1. Fork and clone the repo
1. Start the story
1. Make the spec fail
1. Write a program that asks a user for their name by printing the prompt "What is your name?".
1. Make the program print out the text "Hello [enteredName]!" where [enteredName] is replaced by the
name entered above.
1. Run the spec
1. Commit and push
1. Finish the story

## Tracking your work

If you'd like to track your work, you can
import the related Tracker stories downloaded from
[here](http://students.gschool.it/trackerStories/rubyBasicsStories.csv){:target="_blank"} into your project.

## Homework

Complete assignments below by getting the tests to pass. Step one is to [fork](https://help.github.com/articles/fork-a-repo){:target="_blank"}
the [starting repository](https://github.com/gSchool/ruby_basics){:target="_blank"} into your account and clone the repository to your local machine
into the gSchool working folder. You should then run `bundle` and then `rspec spec` from the cloned directory to see all of the pending specs.

{% terminal %}
$ git clone git@github.com:yourname/ruby_basics.git
$ cd git@github.com:yourname/ruby_basics.git
$ bundle
{% endterminal %}

Now you are setup to start running tests.
If you want to run only the specs for a specific assignment, you can run `rspec spec/[spec_file_name]`. 
For example, to run only the Greetings specs from the demo, you would type: 

{% terminal %}
$ rspec spec/greetings_spec.rb
{% endterminal %}

You will see that all of the tests are pending to start.  Remove the "pending" from the test you are working on and re-run the spec to see the failure.

You assignment is to use each of the test files to complete the exercises below. Each exercise 
should be implemented in a file that is named after the title of the item using
proper Ruby file naming conventions. For example, Guessing Game
should be implemented in a file at the path `bin/guessing_game.rb`.  

So if you are working on the greetings exercise, your directory structure should look like this:

{% terminal %}
.
├── Gemfile
├── Gemfile.lock
├── LICENSE
├── README.md
├── bin
│   ├── birthday_data.csv
│   └── greetings.rb # <== you add this file
└── spec
    ├── beer_on_the_wall_spec.rb
    ├── birthday_helper_spec.rb
    ├── deaf_grandma_spec.rb
    ├── greetings_spec.rb
    ├── roman_numerals_spec.rb
    └── spec_helper.rb
    └── aruba

{% endterminal %}

If you get stuck on one, write as much code as you can then write out your logic using comments and
short English phrases for any code that you do not know how to write.
When you are done, push your code back up to GitHub for review.

View the README for more information about specifics of each program you will write.