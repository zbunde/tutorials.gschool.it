# Starting down the road to Test Driven Development

Source code for in class work can be found [here](https://github.com/Galvanize-IT/testingDemo){:target="_blank"}.

## Goal
At the end of this demo, the student should be able to:

* understand why automated testing is important
* translate english language requirements into test cases for small classes. We will build on this skill throughout class as we build bigger systems and discuss testing at different levels.
* explain the three parts of the TDD cycle
* identify the different parts of a test
    * setup
    * calling class under test
    * assertion of results
    * teardown
* understand Minitest::Test and RSpec syntax
* unerstand what a [dependency](http://en.wikipedia.org/wiki/Coupling_(computer_programming)){:target="_blank"} is
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

### Automated Testing

The mechanics of test driven development (TDD)

* **Red** - Write a failing test
* **Green** - Make is pass using the simplest code possible
* **Refactor** - Clean up any messes

**Thats it!**

* Test code in one file, production code in another file. [Commit](https://github.com/Galvanize-IT/testingDemo/commit/6bf39f5744a2904aa4441e18af1effee6618ba31){:target="_blank"}
* Write a test that fails for the correct reason. [Commit](https://github.com/Galvanize-IT/testingDemo/commit/129ca394e8f1a273d6618d61e42619eed5923132){:target="_blank"}
* Tests should cover all of the possible cases. [Commit](https://github.com/Galvanize-IT/testingDemo/commit/78aef5556e779db58eac860f3a13b7d3b5a00a5a){:target="_blank"}, [Commit](https://github.com/Galvanize-IT/testingDemo/commit/f687310a9ccf84bbec98bed9d8e50ec5ef6d5667){:target="_blank"}
* Requirements change. [Commit](https://github.com/Galvanize-IT/testingDemo/commit/1c60dad327324b2715dee140cb341f2ba7efae20){:target="_blank"}
* Refactor to clean up duplication in tests. [Commit](https://github.com/Galvanize-IT/testingDemo/commit/660c5fe2d3f6b53cbae9d1434bc95eeeaf20a28c){:target="_blank"}
* Use a common setup to eliminate more code. [Commit](https://github.com/Galvanize-IT/testingDemo/commit/020f1278a9ab807bae8c923a608d5e55c4f0d06c){:target="_blank"}
* Use a library (Minitest::Test) to eliminate even more code. [Commit](https://github.com/Galvanize-IT/testingDemo/commit/d08995ed651109fee79699424b1345884eb1ab37){:target="_blank"}
* assert vs assert_equal [Commit](https://github.com/Galvanize-IT/testingDemo/commit/a2cc25a6e10f7e0d802bebe0937c1feed0eaef12){:target="_blank"}
* Simplify as much as you can. [Commit](https://github.com/Galvanize-IT/testingDemo/commit/1c5b65a78c79f96fc6a12acb60ca486cd51e9a66){:target="_blank"}
* Simplification is for long term understandability, not character preservation. [Commit](https://github.com/Galvanize-IT/testingDemo/commit/7cbc4aee380f07653b06bf9e02ecb407e13c3832){:target="_blank"}
* Change to RSpec for a bit easier readability. [Commit](https://github.com/Galvanize-IT/testingDemo/commit/bcdb4878ea84df16729a56af36f98aad71e6cfcf){:target="_blank"}
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

You should [create a local Git repository](http://git-scm.com/book/en/Git-Basics-Getting-a-Git-Repository){:target="_blank"}
with one sub-directory for each of the exercises. You should also push this code to
GitHub in a [newly created repository](https://help.github.com/articles/creating-a-new-repository){:target="_blank"} called
"intro_to_tdd".

Please work in groups of 4 and help others along as you go.

Each person will write their own versions with their own GitHub repository but you should use the group for help.

First, make sure that you have RSpec installed.

{% terminal %}
$ gem install rspec
{% endterminal %}

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