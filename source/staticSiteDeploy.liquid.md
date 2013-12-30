#Deploying a static site to Heroku

## XP practices learned
* Incremental deployment
* Stories
* ???

## Tech skills learned
* Cloning repository from GitHub
* Using local development environment
* Deploying application to Heroku
* Committing changes to local Git repository

This tutorial will lead you through the steps of obtaining [source code](http://en.wikipedia.org/wiki/Source_code) for a [static web site](http://en.wikipedia.org/wiki/Static_web_page) from a remote [Git](http://git-scm.com/book/en/Getting-Started) repository by [cloning that repository](http://git-scm.com/book/en/Git-Basics-Getting-a-Git-Repository), making and confirming local changes to that site and deploying that application to the Internet via a hosting solution called [Heroku](https://www.heroku.com/).

Story 1 - Clone static site template from GitHub:
In a terminal window, change into the directory that you have created to hold all of your class work and clone the template Git repository from GitHub into this directory.

{% terminal %}
$cd workspace
$git clone SOME URL

Cloning into 'restaurant_site'...
remote: Counting objects: 20, done.
remote: Compressing objects: 100% (13/13), done.
remote: Total 20 (delta 1), reused 14 (delta 1)
Receiving objects: 100% (20/20), done.
Resolving deltas: 100% (1/1), done.
Checking connectivity... done
{% endterminal %}

Story 2 - Make sure you can run the site locally:
You can then change into the newly cloned directory (now known as the local development environment for this site) install the necessary Ruby [dependencies](http://en.wikipedia.org/wiki/Dependency_(computer_science)) using [Bundler](http://bundler.io/) and run the site locally. 

{% terminal %}
$cd restaurant_site
$bundle install
Installing rack (1.5.2) 
Using bundler (1.3.5) 
Your bundle is complete!
Use bundle show [gemname] to see where a bundled gem is installed.
$rackup
[2013-12-19 10:17:24] INFO  WEBrick 1.3.1
[2013-12-19 10:17:24] INFO  ruby 2.0.0 (2013-06-27) [x86_64-darwin13.0.1]
[2013-12-19 10:17:24] INFO  WEBrick::HTTPServer#start: pid=14012 port=9292
{% endterminal %}

You will notice that the command window that the server is running in no longer has a prompt and a cursor. This means that the web server is running as a foreground process on your computer and is now occupying that terminal window until you stop it with Control-C.

When you navigate your web browser to http://localhost:9292, you should see "Hello world!" displayed very plainly in your browser.

![Browsing the local development environment](/images/staticSiteDeploy/runningLocally.png)

Story 3 - Deploy template to Heroku:
You will now deploy the plain site from your local development environment to Heroku, a cloud based hosting platform for web applications. First you will need to create an application within Heroku using the Heroku [command line interface](http://en.wikipedia.org/wiki/Command-line_interface) installed with the Heroku toolbelt. Then you will push the code from your machine up to Heroku using Git and make sure it runs in a web browser.

{% terminal %}
$heroku login
Enter your Heroku credentials.
Email: <the email you signed up to Heroku with>
Password (typing will be hidden): 
Authentication successful.

$heroku apps:create
Creating protected-caverns-4965... done, stack is cedar
http://protected-caverns-4965.herokuapp.com/ | git@heroku.com:protected-caverns-4965.git

$git remote add heroku git@heroku.com:protected-caverns-4965.git

$git remote -v
heroku	git@heroku.com:protected-caverns-4965.git (fetch)
heroku	git@heroku.com:protected-caverns-4965.git (push)
origin	git@github.com:Galvanize-IT/restaurant_site.git (fetch)
origin	git@github.com:Galvanize-IT/restaurant_site.git (push)

$git push heroku master
Initializing repository, done.
Counting objects: 20, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (13/13), done.
Writing objects: 100% (20/20), 3.27 KiB | 0 bytes/s, done.
Total 20 (delta 1), reused 20 (delta 1)

-----> Ruby app detected
-----> Compiling Ruby/Rack
-----> Using Ruby version: ruby-2.0.0
-----> Installing dependencies using Bundler version 1.3.2

<Lots more output>

-----> Discovering process types
       Procfile declares types -> (none)
       Default types for Ruby  -> console, rake, web

-----> Compressing... done, 12.0MB
-----> Launching... done, v3
       http://protected-caverns-4965.herokuapp.com deployed to Heroku

To git@heroku.com:protected-caverns-4965.git
 * [new branch]      master -> master

$heroku open
Opening protected-caverns-4965... done
{% endterminal %}

![Browsing Heroku](/images/staticSiteDeploy/runningOnHeroku.png)

Congratulations, you have just deployed what may be your first web application to the Internet for all to see! You can share this [URL](http://en.wikipedia.org/wiki/Uniform_resource_locator) with your friends and family.

Story 4 - Make simple changes to site:
Open your local working directory in RubyMine and find the public/index.html. Add some funny text to the file. Don't worry about saving it, RubyMine will auto save when the window is no longer the active window.

![Editing Index](/images/staticSiteDeploy/editingIndex.png)

Story 5 - Add/commit the changes in the git gui

Open GitX. You can do this by hitting command-<space> and typing GitX into the Spotlight dialog that opens or you can find GitX in your Applications directory. 

Open your local working directory using GitX and you should see the index.html listed in the left side of the bottom pane. This is Git's way of telling your that something has changed in this file. 

![Unstaged Changes](/images/staticSiteDeploy/unstagedChanges.png)

You can click on this icon to see exactly what has changed. Git should show you the old text (denoted by the line with the "-" at the beginning) and the new text (denoted by the line with the "+" at the beginning).

![Index Diff](/images/staticSiteDeploy/indexDiff.png)

You can then tell Git that you are ready to commit your changes by dragging the index.html file from the left most pane to the right most pane or by double clicking the index.htm icon. This is called [staging the change](http://git-scm.com/book/en/Git-Basics-Recording-Changes-to-the-Repository).

![Staged Changes](/images/staticSiteDeploy/stagedChanges.png)

In order to record this change in your Git history. Think of this like a running record of all of the changes you make to a set of files, called a repository, similar to the running total you keep in your checking account. To do this, type a message in the middle pane at the bottom of the screen, something like "Text changes", and then hit the "commit" button.

![Ready To Commit](/images/staticSiteDeploy/readyToCommit.png)

You should see the file disappear from the bottom of the screen. No worries, Git has recorded your change for safe keeping. You can check this by clicking on the "master" branch link in the upper right corner of the GitX window.

![Looking At Commit](/images/staticSiteDeploy/lookingAtCommit.png)

![Commit](/images/staticSiteDeploy/commitDetails.png)

Story 6 - Push to Heroku

You are now ready to share you change with the world by deploying your code to Heroku just like your did for story 3.

{% terminal %}
$git push heroku master

Fetching repository, done.
Counting objects: 11, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (6/6), done.
Writing objects: 100% (7/7), 782 bytes | 0 bytes/s, done.
Total 7 (delta 2), reused 3 (delta 1)

-----> Ruby app detected
-----> Compiling Ruby/Rack
-----> Using Ruby version: ruby-2.0.0
-----> Installing dependencies using Bundler version 1.3.2
       Running: bundle install --without development:test --path vendor/bundle --binstubs vendor/bundle/bin --deployment
       Using rack (1.5.2)
       Using bundler (1.3.2)
       Your bundle is complete! It was installed into ./vendor/bundle
       Bundle completed (0.45s)
       Cleaning up the bundler cache.
-----> Discovering process types
       Procfile declares types -> (none)
       Default types for Ruby  -> console, rake, web

-----> Compressing... done, 12.0MB
-----> Launching... done, v4
       http://protected-caverns-4965.herokuapp.com deployed to Heroku

To git@heroku.com:protected-caverns-4965.git
   1c37fff..a9c22a3  master -> master
   
You can confirm that your changes were deployed by opening up the browser. You may need to refresh the page to see the changes.

$heroku open
Opening protected-caverns-4965... done

{% endterminal %}

![After Changes](/images/staticSiteDeploy/afterChangesBrowser.png)

Congratulations, you have successfully finished your first release marker in Tracker. You can click on the blue "Finish" button in the "Static page deployed" Tracker feature.

## Homework Exercises
Git Version Control

* http://try.github.io/
* http://gitimmersion.com/