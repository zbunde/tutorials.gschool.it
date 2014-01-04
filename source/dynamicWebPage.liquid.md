# Adding Dynamic Content to a Web Page With Ruby

## XP practices learned
* Test First Programing/Test Driven Development
* Incremental Design
* Incremental deployment
* Continuous Integration

## Tech skills learned
* [Dynamic Web Content](http://en.wikipedia.org/wiki/Dynamic_web_page){:target="_blank"} via [Erb](http://en.wikipedia.org/wiki/ERuby){:target="_blank"}

This tutorial will lead you through the steps to dynamically generate content on a web
page using embedded Ruby, also know as erb. Dynamic content allows us to generate content for
a web page from things like databases to customize the user experience. Sites like Twitter, Facebook and Amazon
make heavy use of dynamic content.

## <a name="copyrightDate"></a>Dynamic Copyright Date

The restaurant owner is very happy with the landing page you have created for them but there is one issue
that they didn't think about. The year has changed but the copyright year at the bottom of the site is still
from last year. They would like it to change each year without having a developer change the page.
You decide that you can use erb to make this work.

Open up the restaurant site in RubyMine. You first destination is the test for the site. Just like
we wrote the tests before writing the code, you will change the tests to reflect the new requirements
before you change the code.

You should see the test directory listed in the file finder.
You can either click on the landing_page_test.rb file in the finder or press command-shift-o, a
[keyboard shortcut](http://www.jetbrains.com/ruby/docs/RubyMine_ReferenceCard_Mac.pdf){:target="_blank"}
in RubyMine that will allow you to quickly find files, and start typing the name of the test file.

![Find Test File](/images/dynamicWebPage/findTestFile.png)

Once there, you need to find the test that validates the copyright year.

![Copyright test](/images/dynamicWebPage/copyrightDateTest.png)

You need to change this test so instead of [hard coding](http://en.wikipedia.org/wiki/Hard_coding){:target="_blank"}
the year, it asks Ruby for the current year and uses that in the tests.

![Dynamic copyright test](/images/dynamicWebPage/dynamicCopyrightTest.png)

Notice that we had to [convert](https://pine.fm/LearnToProgram/?Chapter=04){:target="_blank"}
the year to a [string](https://pine.fm/LearnToProgram/?Chapter=02){:target="_blank"} using the
`to_s` [method](http://en.wikipedia.org/wiki/Method_(computer_programming)){:target="_blank"}
so that Ruby could use it to compare to another string.

You can now run the tests and watch the changed test fail.

{% terminal %}
$ rake test
Run options: --seed 34548
< omitted text >
  1) Failure:
Landing page#test_0007_displays the copyright in the footer [/Users/mike/workspace/pivotal/gSchool/curriculum/restaurant_site/test/landing_page_test.rb:56]:
Expected "123 Main Street Boulder, CO 80301 Contact Us © 2013" to include "2014".
9 runs, 4 assertions, 1 failures, 0 errors, 8 skips
{% endterminal %}

Again, the test tells you what the problem is, `Expected "123 Main Street Boulder, CO 80301 Contact Us © 2013" to include "2014".`.

If you had not converted the year to a string,
you would have seen an error stating that Ruby can't convert from a Fixnum, aka a number, to a
String, "TypeError: no implicit conversion of Fixnum into String".

{% terminal %}
$rake test
Run options: --seed 10944
# Running:
< omitted text >
  1) Error:
Landing page#test_0007_displays the copyright in the footer:
TypeError: no implicit conversion of Fixnum into String
< omitted text >
{% endterminal %}

The first thing we need to do to enable erb is to change the [file extension](http://en.wikipedia.org/wiki/Filename_extension){:target="_blank"}
so that the site will know to process erb. You can do this by right-clicking on the file name in the list.

![Erb file extension](/images/dynamicWebPage/erbFile.png)

You should test to make sure that everything is working OK by running your server after you
make the change. If your server was already running, no need to start it again.

{% terminal %}
$ rackup
Puma 2.7.1 starting...
* Min threads: 0, max threads: 16
* Environment: development
* Listening on tcp://0.0.0.0:9292
{% endterminal %}

You can now open up a web browser and make sure that the web page still renders. Remember, it is good
to take small steps as you make changes early on to make sure that you don't get too far down the path
after you break something.

![Site works after erb change](/images/dynamicWebPage/siteStillWorking.png)

Now we can make the actual code change that will allow the copyright date to be dynamically generated. Since you
were already forced to make the change in the tests, you have seen how Ruby allows you to get the current year.
Now you just need to put it into the page. Erb uses a special [delimiter](http://en.wikipedia.org/wiki/Delimiter){:target="_blank"}
to tell Ruby what is to be generated and what is static content.

![Erb in index page](/images/dynamicWebPage/erbInIndex.png)

You can now replace the "Some code here" text with the same code that you changed in the test. After making this
change, you can re-run your tests to confirm you got it right.

{% terminal %}
$rake test
Run options: --seed 27242
# Running:
........
Fabulous run in 0.012950s, 617.7606 runs/s, 308.8803 assertions/s.
8 runs, 20 assertions, 0 failures, 0 errors, 0 skips
{% endterminal %}

You should also check in the browser to make sure it all looks good.

![Showing dynamic copyright](/images/dynamicWebPage/showingDynamicCopyright.png)

Now it is ready to commit and deploy to production. First you should confirm your changes in the test file.

![Test Change](/images/dynamicWebPage/testChange.png)

The changes in the index page are a little harder to see in the GitHub Gui because we moved the file before
making the changes. The UI knows that the file was moved (note the => between the file names).

![Index page move](/images/dynamicWebPage/fileMove.png)

What is has a harder time figuring out was that you only changed one thing (see red underlined code).

![Index page change](/images/dynamicWebPage/indexPageChange.png)

You could have committed the file move before making the change and then your change would have been easier to
see in the UI. Since the index page isn't that big, it is easy for us to visually confirm that the change looks
OK.

You can then commit your changes by filling in a good commit summary and extended description and pressing the commit button.

![Commit changes](/images/dynamicWebPage/commitChange.png)

Confirm that your commit is OK by checking the history tab.

![Confirm commit](/images/dynamicWebPage/confirmCommit.png)

You can now push your change up to GitHub using the sync button so that the rest of your team can see the change and make sure their code works well with it.

Finally, deploy your change to Heroku.

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

You can then open the stating environment and make sure everything looks good.

{% terminal %}
$heroku open
Opening fast-falls-6618... done
{% endterminal %}

![Checking staging](/images/dynamicWebPage/checkingStaging.png)

Now that you have confirmed that everything looks good in staging, you can mark the Tracker story as delivered. This will alert the product owner, in this case your instructor playing the
role of the restaurant owner, that they can make sure everything looks good. They will either accept or reject the story depending if it meets their needs.
