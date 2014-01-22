# [Introduction to Test Driven Development](https://github.com/Galvanize-IT/testingDemo){:target="_blank"}

## Goal
At the end of this demo, the student should be able to:

* understand why automated testing is important
* explain the three parts of the TDD cycle
* identify the different parts of a test
    * setup
    * calling class under test
    * assertion of results
    * teardown

* understand Minitest::Test synax enough to read Exercism.io tests

## XP practices learned
* Test First Programming/TDD

## Tech skill learned
* Refactoring
* [Minitest](https://github.com/seattlerb/minitest){:target="_blank"}, both Minitest::Test and Minitest::Spec

## Understanding Why
* Writing automated tests:
    * reduces the number of commands you have to run manually
    * reduces guessing about what code does or will do through immediate feedback
    * gives you the safety net to develop with courage

Some quotes from "Extreme Programming Explained: Embrace Change (2nd Edition)" by Kent Beck and Cynthia Andres

* "Defects **destroy this trust**. Without trust, people spend much of their time **defending themselves** against the possibility that **someone else may have made a mistake**."
* "Here is the dilemma in software development: **defects are expensive**, but eliminating defects is also expensive. However, most defects end up **costing more than it would have cost to prevent them**."
* "Acceptable defect levels vary. One goal of development is to reduce the occurrence of defects to an **economically sustainable level**. Another goal of development is to **reduce the occurrence** of defects to a **level where trust** can reasonably grow on the team."
* "Tests can provide a **measure of progress**. If I have ten tests broken and I fix one, then I've made progress."

## The mechanics of test driven development (TDD)
* Red - Write a failing test
* Green - Make is pass
* Refactor - Clean up any messes

Thats it!

## Demo (We do)

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
Git commits in parens.

* Test code in one file, production code in another file ()
* Write a test that fails for the correct reason. ()
* Tests should cover all of the possible cases. ()
* Requirements change. ()
* Refactor to clean up duplication in tests. ()
* Use a common setup to eliminate more code. ()
* Use a library (Minitest::Test) to eliminate even more code. ()
* assert vs assert_equal ()
* Simplify as much as you can. ()
* Simplification is for long term understandability, not character preservation. ()
* Change to Minitest::Spec for a bit easier readability. ()

## Homework (You do)


## More information

* [Test Driven Development](http://www.amazon.com/Test-Driven-Development-By-Example/dp/0321146530){:target="_blank"} by Example by Kent Beck
* [Growing Object Oriented Software Guided by Tests](http://www.amazon.com/Growing-Object-Oriented-Software-Guided-Tests/dp/0321503627){:target="_blank"} by Steve Freeman and Nat Price