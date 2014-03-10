# Starting down the road to Test Driven Development

## Goal
At the end of this demo, the student should be able to:

* understand why automated testing is important
* translate english language requirements into test cases for small classes.
We will build on this skill throughout class as we build bigger systems and
discuss testing at different levels.
* explain the three parts of the TDD cycle
* identify the different parts of a test
    * setup
    * calling class under test
    * assertion of results
    * teardown
* understand Minitest::Test and RSpec syntax
* understand what a [dependency](http://en.wikipedia.org/wiki/Coupling_(computer_programming)){:target="_blank"} is
* have a basic understanding of semantic versioning
* understand the roles that [Bundler](http://bundler.io/){:target="_blank"} and [RubyGems](http://rubygems.org/){:target="_blank"} play in the Ruby ecosystem

## XP practices learned

* Test First Programming

## Tech skill learned

* [Bundler](http://bundler.io/){:target="_blank"}
* [RubyGems](http://rubygems.org/){:target="_blank"}, libraries for sharing Ruby code
* [Semantic Versioning](http://semver.org/){:target="_blank"}
* [Minitest::Test](https://github.com/seattlerb/minitest){:target="_blank"} syntax for reading [Exercism.io](http://exercism.io/){:target="_blank"} exercises
* [RSpec](https://github.com/rspec/rspec){:target="_blank"}, which will be the primary testing framework for the rest of class
* [Refactoring](http://en.wikipedia.org/wiki/Code_refactoring){:target="_blank"}

## Understanding Why

Writing automated tests:

* gives you **courage** to change things since the automated tests will tell you when something breaks
* allows you to **reflect on** what the problem is/what the system does before you write the system
* allows you to **communicate** about the system to **other developers**
* reduces guessing about how things work through immediate **feedback**

Some quotes from "Extreme Programming Explained: Embrace Change (2nd Edition)" by Kent Beck and Cynthia Andres:

* "Defects **destroy this trust**. Without trust, people spend much of their time **defending themselves** against the possibility that **someone else may have made a mistake**."
* "Here is the dilemma in software development: **defects are expensive**, but eliminating defects is also expensive. However, most defects end up **costing more than it would have cost to prevent them**."
* "Acceptable defect levels vary. One goal of development is to reduce the occurrence of defects to an **economically sustainable level**. Another goal of development is to **reduce the occurrence** of defects to a **level where trust** can reasonably grow on the team."
* "Tests can provide a **measure of progress**. If I have ten tests broken and I fix one, then I've made progress."

## Demo

### Requirements

Implement a bike class that can perform the following:

* User can set the color of the bike upon creation
* User can ask the color of the bike
* User can ask if the bike is cool. Only red bikes are cool.

### Manual Testing
What does the flow look like without tests?

When writing new code:

* Write some code
* Make sure it does what you want
* Repeat

Supporting existing code:

* Remember what the code should do
* Write/change code
* Make sure it still does what it used to do
* Make sure the new code works as well
* Repeat

** Demonstrate using IRB **

### Automated Testing

The mechanics of test driven development (TDD)

* **Red** - Write a failing test
* **Green** - Make is pass using the simplest code possible as quickly as possible
* **Refactor** - Clean up any messes

**Thats it!**

* Test code in one file, production code in another file.
* Write a test that fails for the correct reason.
* Tests should cover all of the possible cases for `is_cool?`.
* Requirements change and now blue bikes are cool.
* Refactor to clean up duplication in tests by extracting assert_equal.
* Use a common setup to eliminate more code.
* Use a library (Minitest::Test) to eliminate even more code.
* assert vs assert_equal
* Simplify as much as you can by using refute.
* Simplification is for long term understandability, not character preservation.
* Change to RSpec for a bit easier readability.
    * Talk about dependencies, Bundler, RubyGems and semantic versioning

## Implement together

### Fizz Buzz

The constraints:

1. The class will return the numbers starting with 1 and ending with the number that it was initialized with. For example, if I
pass in 10, then the program will return an array containing 1 through 10.
1. If the number is a multiple of 3, then the program will replace the number in the array with the text "Fizz".
1. If the number is a multiple of 5, then the program will replace the number in the array with the text "Buzz".
1. If the number is a multiple of both 3 and 5, then program will replace the number in the array with the text "FizzBuzz".

### Key value store

The constraints:

1. A user of the class can add a value stored under a key.
1. A user can get the value for a key.
1. A user can delete a key. When they do this, getting this key will return nil.
1. A user can get the keys for the store. This will return a list of the keys in the store.
1. A user can clear a store. Clearing a store deletes all of the keys and their values.

Why don't we just use a Hash to implement this code?

## Homework

Complete all exercises using good TDD style, as demonstrated in class, and RSpec.

Please work in groups of 4 and help others along as you go.

Each person will write their own versions with their own GitHub repository but you should use the group for help.

Your first step is to [create a local Git repository](http://git-scm.com/book/en/Git-Basics-Getting-a-Git-Repository){:target="_blank"}
named "intro_to_tdd". You will push this code to
GitHub in a [newly created repository](https://help.github.com/articles/creating-a-new-repository){:target="_blank"} called
"intro_to_tdd".

Next, initialize your bundle using bundler so you get a Gemfile.

{% terminal %}
$ bundle init
{% endterminal %}

Finally, add the latest released version of RSpec as per RubyGems.org. Make sure you specify a version specifier.

You will then implement tests for the two exercises (Fizz Buzz and key/value store) above and
all of the below exercises. Your tests will reside in a spec directory
and your Ruby files will live in a lib directory. Both are subdirectories of the intro_to_tdd
directory.

1. odd/even
    * The class will return the numbers starting with 1 and ending with the number that it was initialized with when the run method is called.
    For example, if I pass in 10, then the program will return an array containing 1 through 10.
    * If the number is even then the program will replace the number in the array with the text "Even".
    * If the number is odd, then the program will replace the number in the array with the text "Odd".

1. leap year calculator
    * The class is not initialized with anything special. You will call a method called yes? that will tell you if
    it is a leap year or not.
    * The year is a leap year if it is divisible by 4. (2001 is not a leap year but 1996 is a leap year)
    * The year is leap year if it is divisible by 100 and divisible by 400. If it is only divisible by 100, it is not a leap year.
     (1900 is not a leap year but 2000 is a leap year)

1. string calculator
    * The class is not initialized with anything special.
    * There is one method called `add` that adheres to the following rules:
        * If the empty string is passed, the method returns 0.
        * Otherwise the method returns the sum of the numbers in the string. For example, if the string "1" is passed then
        the calculator returns 1. If the string "1,2,7" is passed, then the method returns 10.
        * The [delimiter](http://en.wikipedia.org/wiki/Delimiter){:target="_blank"} can be specified at initialization
        time. In the above examples, the delimiter was the string ",". Any calls to `add` will use that delimiter.

1. numeric calculator
    * The class is not initialized with anything special.
    * There is an `add` method that takes two numbers. It returns the sum of the two numbers.
    * There is a `subtract` method that takes two numbers. It returns the difference of the two numbers.
    * There is a `save` method that allows you to save a number to the calculator's memory. The number can be retrieved using the
    `get` method.
    * There is a `clear` method that clears the calculator's memory. When the memory is empty, `get` returns 0.
    * When a calculator is initialized, the memory value is 0.

## More information

* [Test Driven Development](http://www.amazon.com/Test-Driven-Development-By-Example/dp/0321146530){:target="_blank"} by Example by Kent Beck
* [Growing Object Oriented Software Guided by Tests](http://www.amazon.com/Growing-Object-Oriented-Software-Guided-Tests/dp/0321503627){:target="_blank"} by Steve Freeman and Nat Price