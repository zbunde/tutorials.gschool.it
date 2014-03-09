#Building a basic HTML5 landing page

## XP practices learned
* Test First Programing/Test Driven Development
* Incremental Design
* Incremental deployment
* Continuous Integration

## Tech skills learned
* Semantic HTML markup
* HTML Tags

## Resources
* [HTML Introduction](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Introduction){:target="_blank"}
* [HTML Element Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element){:target="_blank"}

This tutorial will lead you through building a basic structure for an [HTML5](http://www.w3.org/TR/html5/introduction.html#introduction) web page.
In this tutorial, you will build on the static website you used in the [previous tutorial](/static_site_deploy){:target="_blank"} to build a landing page for a new restaurant in town.
The owner of the restaurant has expressed that the sole goal for this site right now is to act as a basic landing page so people know they are open and begin to come by the restaurant.
You job is to build a one page, static website for them. The CSS for the site will be provided.

Your Tracker project has been populated with the stories for this iteration.
They have been prioritized by the client in the order they would like to see them. Please work on them in the order presented so that the client can get the greatest benefit early in the project.

You will be using the provided tests to help you drive out the development of the HTML content.
These tests follow the flow of the Tracker stories. The flow you will follow is to remove the `skip` marker from a test, see the test failing and then write only the code that you need to make it pass.
This is the very beginnings of your exposure to [Test Driven Development](http://en.wikipedia.org/wiki/Test-driven_development){:target="_blank"} (aka TDD).

The testing library we are using is called [Miniest](https://github.com/seattlerb/minitest). The tests can be found in the /test directory in your local development environment.
These tests can be run from the command line.

{% terminal %}
$ rake test
Run options: --seed 49924
.
Fabulous run in 0.039836s, 25.1029 runs/s, 25.1029 assertions/s.
1 runs, 1 assertions, 0 failures, 0 errors, 0 skips
{% endterminal %}0

Every time you make a change to the HTML code, you should re-run your tests to see if the test you are working on now passes.
You can easily do this by hitting the up arrow in the command line window. This will scroll through the commands you have previously run.

## <a name="getTestsRunning"></a>Get tests running

Change into the `restaurant_site` directory and use [Rake](http://en.wikipedia.org/wiki/Rake_(software)){:target="_blank"} to run all of the tests.

{% terminal %}
$ cd ~/gSchoolWork/restaurant_site
$ rake test
Run options: --seed 42410
# Running:
SSSSSSSSSS
Fabulous run in 0.011566s, 864.6031 runs/s, 0.0000 assertions/s.
10 runs, 0 assertions, 0 failures, 0 errors, 10 skips
You have skipped tests. Run with --verbose for details.
{% endterminal %}

You should see a bunch of skipped tests. If you get this output, you can mark the Tracker chore as complete.

## <a name="nameInTitle"></a>Restaurant name displays in the browser tab

Before you start making code changes, you should mark the Tracker story as started. This tells everyone on your team that you are working on this story. Even though
you are a team of one, you should mark the story as started to get in the habit.

Now open the test/landing_page_test.rb file in RubyMine. This file contains one test for each change we will need to make to the HTML in public/index.html.
Find the test that relates to displaying the restaurant name in the browser title. The first line of this test is an `it` block that tells you what
the focus of the test is, in this case it is ""displays the restaurant name in the browser title", and then a [do...end block](https://pine.fm/LearnToProgram/?Chapter=10){:target="_blank"}
that contains the body of the test.

![Anatomy of a test](/images/basicHtmlStructure/testAnatomy.png)

First remove the `skip` from the body of the first test and run the tests.

![First failing test](/images/basicHtmlStructure/firstFailingTest.png)

{% terminal %}
$ rake test
Run options: --seed 29134
# Running:
SSSSSSSESS
Fabulous run in 0.011825s, 845.6660 runs/s, 0.0000 assertions/s.
1) Error:
Landing page#test_0001_displays the restaurant name in the browser title:
Capybara::ExpectationNotMet: expected to find css "html head title" but there were no matches
    /Users/mike/.rbenv/versions/2.1.0/lib/ruby/gems/2.1.0/gems/capybara-2.2.0/lib/capybara/node/matchers.rb:91:in 'block in assert_selector'
    /Users/mike/.rbenv/versions/2.1.0/lib/ruby/gems/2.1.0/gems/capybara-2.2.0/lib/capybara/node/base.rb:81:in 'synchronize'
    /Users/mike/.rbenv/versions/2.1.0/lib/ruby/gems/2.1.0/gems/capybara-2.2.0/lib/capybara/node/matchers.rb:89:in '`'assert_selector'
    /Users/mike/.rbenv/versions/2.1.0/lib/ruby/gems/2.1.0/gems/capybara-2.2.0/lib/capybara/session.rb:396:in 'block (2 levels) in <class:Session>'
    /Users/mike/.rbenv/versions/2.1.0/lib/ruby/gems/2.1.0/gems/capybara-2.2.0/lib/capybara/rspec/matchers.rb:19:in 'matches?'
    /Users/mike/.rbenv/versions/2.1.0/lib/ruby/gems/2.1.0/gems/capybara_minitest_spec-1.0.1/lib/capybara_minitest_spec.rb:37:in 'block in define_assertion'
    (eval):4:in 'must_have_css'
    /Users/mike/workspace/pivotal/gSchool/curriculum/restaurant_site/test/landing_page_test.rb:11:in 'block (2 levels) in <top (required)>'
10 runs, 0 assertions, 0 failures, 1 errors, 9 skips
You have skipped tests. Run with --verbose for details.
rake aborted!
Command failed with status (1): [ruby -I"test" -I"/Users/mike/.rbenv/versions/2.1.0/lib/ruby/gems/2.1.0/gems/rake-10.1.1/lib" "/Users/mike/.rbenv/versions/2.1.0/lib/ruby/gems/2.1.0/gems/rake-10.1.1/lib/rake/rake_test_loader.rb" "test/*_test.rb" ]
Tasks: TOP => test
(See full trace by running task with --trace)
{% endterminal %}

Of course this test is failing, we haven't written any code to make it pass yet. Seeing a failing test before writing any code is important and one of the reasons we write our tests first. This allows us to be assured
that the test is a valid one and that the code that we write is responsible for making it pass. It is possible to write tests that never fails, or fails for reasons that aren't related to the code that you write,
so no matter what code you write the test will always pass. A test that never fails
does not help us know that we've broken the code behavior when we change code, one of the primary reasons we write tests at all.

Another great thing about writing tests first is it gives us an ability to think through the problem we are trying to solve. In this case, the test is expecting
that we have HTML that contains the [CSS selector](http://www.w3.org/TR/CSS2/selector.html){:target="_blank"} `html head title` so someone has determined that in order to get some text
to show up in the browser title, you must have HTML that looks something like this:

~~~ html
<html>
    <head>
        <title></title>
    </head>
</html>
~~~

How did I figure out this from the test output? Look at the line "Capybara::ExpectationNotMet: expected to find css "html head title" but there were no matches". This gives me the answer.
Getting good at reading and deciphering error messages and test outputs is one of the skills that you should strive to get good at quickly. They are a treasure trove of information and let's
us know what the computer is expecting.

Now that you know what is expected to make the test pass, you can edit the public/index.html file to add the necessary code.

![Staring HTML](/images/basicHtmlStructure/startingHtml.png)

![Display Title](/images/basicHtmlStructure/displayTitle.png)

You can now re-run the tests and see if you made the right change.

{% terminal %}
$rake test
 Run options: --seed 40377
 # Running:
 SSSSS.SSSS
 Fabulous run in 0.011933s, 838.0122 runs/s, 83.8012 assertions/s.
 10 runs, 1 assertions, 0 failures, 0 errors, 9 skips
 You have skipped tests. Run with --verbose for details.
{% endterminal %}

Congratulations, you have made your first test pass!

You should also take a look at your work in the browser to make sure the [end user](http://en.wikipedia.org/wiki/User_(computing)#End_user){:target="_blank"}
will have the correct results since we have only relied on the tests to determine if we are done. The reason we check in the browser as well is to make sure our tests match up with the real world. If the test ended
up being wrong, they would still be green but the end user wouldn't be getting what they wanted.

![Title in browser](/images/basicHtmlStructure/titleInBrowser.png)

Now that you have confirmed that everything is correct as per the story and the tests, you can make a commit using the GitHub Gui or the command line.

First look through each file to confirm that the changes that have been made
are the ones that you want to commit. For the Gui:

![Test Change](/images/basicHtmlStructure/testChange.png)

![Index page change](/images/basicHtmlStructure/indexPageChange.png)

For the command line, you will use [git diff](http://www.gitguys.com/topics/git-diff/){:target="_blank"}:

{% terminal %}
$ git diff test/landing_page_test.rb
{% endterminal %}

{% terminal %}
git diff public/index.html
{% endterminal %}

You can then commit your changes by filling in a good commit summary and extended description and pressing the commit button.

![Commit changes](/images/basicHtmlStructure/commitChanges.png)

Or using the command line you need to use a [git add and a git commit](http://git-scm.com/book/en/Git-Basics-Recording-Changes-to-the-Repository){:target="_blank"}:
{% terminal %}
$ git add public/index.html test/landing_page_test.rb
$ git commit -m "Some message here"
{% endterminal %}

Confirm that your commit is OK by checking the history tab.

![Confirm commit](/images/basicHtmlStructure/confirmCommit.png)

You can now push your change up to GitHub so that the rest of your team can see the change and make sure their code works well with it. This is what we call [continuous integration](http://en.wikipedia.org/wiki/Continuous_integration){:target="_blank"}.

You can either use the GitHub GUI:

![Push to Github](/images/basicHtmlStructure/pushToGithub.png)

Or you can use the command line:

{% terminal %}
$ git push origin master
Username for 'https://github.com':
Password for 'https://mike.gehard@gmail.com@github.com':
< omitted text >
{% endterminal %}


Now that everything has been integrated, you can mark the Tracker story as completed. This tells the team that you have completed work on the story.

Now it is time to push the code out to an environment that the client has access to so they can confirm that your change is exactly what they wanted but that is physically different than the environment so if the change isn't what they wanted
the whole world doesn't see it. This environment is called a staging (or review) environment. The environment that the whole world can see is called the production environment.

In your case, you don't have two environments on Heroku, only one. For the time being, we will assume that this environment is the staging environment. You should now push your change to Heroku so the client (your instructors) can do story
acceptance.

{% terminal %}
$ git push heroku master
Counting objects: 132, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (122/122), done.
Writing objects: 100% (132/132), 15.03 KiB | 0 bytes/s, done.
Total 132 (delta 50), reused 0 (delta 0)
-----> Ruby app detected
<other output>
-----> Launching... done, v3
       http://fast-falls-6618.herokuapp.com deployed to Heroku
{% endterminal %}

You can then open the staging environment and make sure everything looks good.

{% terminal %}
$ heroku open
Opening fast-falls-6618... done
{% endterminal %}

![Checking staging](/images/basicHtmlStructure/checkingStaging.png)

Now that you have confirmed that everything looks good in staging, you can mark the Tracker story as delivered. This will alert the product owner, in this case your instructor playing the
role of the restaurant owner, that they can make sure everything looks good. They will either accept or reject the story depending if it meets their needs.

You should follow the same series of steps for the stories above the "Html structure deployed". If any of your stories are rejected, you should go back and work on them using this same series of steps.
