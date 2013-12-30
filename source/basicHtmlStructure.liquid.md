#Building a basic HTML5 landing page

## XP practices learned
* ???

## Tech skills learned
* Semantic HTML markup
* HTML Tags
* Beginnings of TDD

This turorial will lead you through building a basic structure for an [HTML5](http://www.w3.org/TR/html5/introduction.html#introduction) web page without any pretty styling. In this tutorial, you will build build on the static website you used in the previous tutorisl to build a landing page for a new restuarant in town. Their sole goal for this site right now is to act as a basic landing page so people know they are open and begin to come by the restaurant. You job is to design and build a one page, static website for them.

Your Tracker project has been populated with the stories for this iteration. They have been prioritized by the client in the order they would like to see them. Please work on them in the order presented.

You will be using the provided tests to help you drive out the development of the HTML content. These tests follow the flow of the Tracker stories. The flow you will follow is to first get a test to fail and then write only the code that you need to make it pass. This is the very beginnings of your exposture to [Test Driven Development](http://en.wikipedia.org/wiki/Test-driven_development) (aka TDD).

The testing library we are using is called [Miniest](https://github.com/seattlerb/minitest). The tests can be found in the /test directory in your local development environment. These tests can be run from the command line.

{% terminal %}
$ rake test
Run options: --seed 49924

.

Fabulous run in 0.039836s, 25.1029 runs/s, 25.1029 assertions/s.

1 runs, 1 assertions, 0 failures, 0 errors, 0 skips

We will be using [Guard Minitest](https://github.com/guard/guard-minitest) integration to allow your to automatically run your tests when a file is changed. You will start Guard in a command line window.

$ bundle exec guard --no-interactions
11:20:50 - INFO - Guard is using TerminalTitle to send notifications.
11:20:51 - INFO - Guard::Minitest 2.0.0 is running, with Minitest::Unit 5.2.0!
11:20:51 - INFO - Running all tests
Run options: --seed 38697
<some other output>
11:20:51 - INFO - Guard is now watching at '/Users/mike/workspace/pivotal/gSchool/curriculum/restaurant_site'
{% endterminal %}


Like starting the server, this window will no longer have a prompt or a cursor since it is tied up running Guard. Please use multiple command line windows if you need to do other things.

### Story 1 - Shop name displays in the browser tab title


### Story 2 - Shop name displays in the header of the page
 
 
## Resources
* [HTML Introduction](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Introduction)
* [HTML Element Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element)