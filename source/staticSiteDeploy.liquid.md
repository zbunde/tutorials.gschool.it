# Deploying a static site to Heroku

## XP practices learned
* Incremental deployment
* Using Tracker Stories
* Energized Work
* Incremental Deployment

## Tech skills learned
* Forking a repository on GitHub
* Cloning repository from GitHub
* Using local development environment
* Deploying application to Heroku
* Committing changes to local Git repository
* Sharing changes with team mates via GitHub

This tutorial will lead you through the steps of obtaining [source code](http://en.wikipedia.org/wiki/Source_code){:target="_blank"} for a [static web site](http://en.wikipedia.org/wiki/Static_web_page){:target="_blank"} from a remote [Git](http://git-scm.com/book/en/Getting-Started){:target="_blank"} repository by [cloning that repository](http://git-scm.com/book/en/Git-Basics-Getting-a-Git-Repository){:target="_blank"}, making and confirming changes to that site and deploying that application to the Internet via a cloud based hosting platform for [web applications](http://en.wikipedia.org/wiki/Web_application){:target="_blank"} called [Heroku](https://www.heroku.com/){:target="_blank"}.

##<a name="localEnvironment"></a>Get static site template running locally

The first step is to make your own copy of the base Git repository, an act known
as [forking a repository](https://help.github.com/articles/fork-a-repo){:target="_blank"}. The repository you are going to fork
is found at [https://github.com/Galvanize-IT/restaurant_site](https://github.com/Galvanize-IT/restaurant_site){:target="_blank"}.
Navigate to the repository URL and use the fork button in the upper right hand corner to fork the repository
to your GitHub account.

![Forking the repository](/images/staticSiteDeploy/forkRepository.png)

You can now clone the repository to your local machine using the GitHub UI. Go ahead and choose "Launch Application"
when the dialog pops up and put the repository into your gSchoolWork directory.

![Clone the repository](/images/staticSiteDeploy/cloneRepository.png)

In a terminal window, you can then change into the newly cloned directory
(now known as the [local development environment](http://www.agiledata.org/essays/sandboxes.html){:target="_blank"} for this site), install the necessary Ruby [dependencies](http://en.wikipedia.org/wiki/Dependency_(computer_science)){:target="_blank"} using [Bundler](http://bundler.io/){:target="_blank"} and run the site locally.

{% terminal %}
$cd ~/gSchoolWork/restaurant_site
$bundle install
Fetching gem metadata from https://rubygems.org/.........
Fetching additional metadata from https://rubygems.org/..
Installing addressable (2.3.5)
< other output after some time installing dependencies >
Your bundle is complete!
Use bundle show [gemname] to see where a bundled gem is installed.
$rackup
[2013-12-19 10:17:24] INFO  WEBrick 1.3.1
[2013-12-19 10:17:24] INFO  ruby 2.0.0 (2013-06-27) [x86_64-darwin13.0.1]
[2013-12-19 10:17:24] INFO  WEBrick::HTTPServer#start: pid=14012 port=9292
{% endterminal %}

You will notice that the command window that the server is running in no longer has a prompt and a cursor. This means that the web server is running as a foreground process on your computer and is now occupying that terminal window until you stop it with `control-c` (holding down control key and then pressing the c key). You can open up multiple terminal tabs using `command-t` and then navigate to your
local working directory if you need it.

When you navigate Chrome to [http://localhost:9292](http://localhost:9292){:target="_blank"}, you should see "Hello world!" displayed very plainly in your browser.

![Browsing the local development environment](/images/staticSiteDeploy/runningLocally.png)

## <a name="deploy"></a>Deploy template to Heroku
You will now deploy the plain site from your local development environment to Heroku. First you will need to create an application within Heroku using the Heroku [command line interface](http://en.wikipedia.org/wiki/Command-line_interface) installed with the Heroku toolbelt.

{% terminal %}
$heroku login
Enter your Heroku credentials.
Email: <the email you signed up to Heroku with>
Password (typing will be hidden): 
Authentication successful.
$heroku apps:create
Creating protected-caverns-4965... done, stack is cedar
http://protected-caverns-4965.herokuapp.com/ | git@heroku.com:protected-caverns-4965.git
{% endterminal %}

The output shows you both the HTTP URL and the Git URL for the newly created application. Before we deploy the code, we need to confirm
that we have a [Git remote](http://git-scm.com/book/en/Git-Basics-Working-with-Remotes){:target="_blank"} set up for Heroku.

{% terminal %}
$git remote -v
heroku	git@heroku.com:protected-caverns-4965.git (fetch)
heroku	git@heroku.com:protected-caverns-4965.git (push)
< other remotes >
{% endterminal %}

If you do not see the `heroku` remote, you will need to add it. You will need the [Git remote](http://git-scm.com/book/ch4-1.html#The-Git-Protocol){:target="_blank"} string
from when the application was created, in this case `git@heroku.com:protected-caverns-4965.git`, but yours
will be different.

{% terminal %}
$git remote add heroku git@heroku.com:protected-caverns-4965.git
$git remote -v
heroku	git@heroku.com:protected-caverns-4965.git (fetch)
heroku	git@heroku.com:protected-caverns-4965.git (push)
< other remotes >
{% endterminal %}

We can then push the code from your machine up to Heroku using Git and make sure it runs in a web browser.

{% terminal %}
$git push heroku master
Initializing repository, done.
Counting objects: 20, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (13/13), done.
Writing objects: 100% (20/20), 3.27 KiB | 0 bytes/s, done.
Total 20 (delta 1), reused 20 (delta 1)
-----> Ruby app detected
< lots more output >
-----> Launching... done, v3
       http://protected-caverns-4965.herokuapp.com deployed to Heroku
To git@heroku.com:protected-caverns-4965.git
 * [new branch]      master -> master
$heroku open
Opening protected-caverns-4965... done
{% endterminal %}


![Browsing Heroku](/images/staticSiteDeploy/runningOnHeroku.png)

Congratulations, you have just deployed what may be your first web application to the Internet for all to see! You can share this [URL](http://en.wikipedia.org/wiki/Uniform_resource_locator){:target="_blank"} with your friends and family.
Go and grab an instructor and have them accept the two stories that are awaiting acceptance.

## <a name="personalQuote"></a>User should see a personal quote on the static site
Open your local working directory in RubyMine and find the public/index.html file and add some funny text to the file. Don't worry about saving it, RubyMine will auto save when the window is no longer the active window.

![Editing Index](/images/staticSiteDeploy/editingIndex.png)

Now we need to tell Git what changes we would like to add to it's history of our codebase. We will use the GitHub Gui to do this.
Open the GitHub Gui using Spotlight by holding command key and pressing the space bar. This will open the Spotlight search. You can then start typing GitHub.
It shouyld show up and you can open it up by pressing the Enter/Return key when it is selected in Spotlight.

![Opening GitHubUi](/images/staticSiteDeploy/openGitHubGui.png)

Open your local working directory using the GitHub Gui (File -> Add Local Repository..., select the restaurant_site directory) and you should see the index.html listed in the left side of the screen. This is Git's way of telling your that something has changed in this file.

![Unstaged Changes](/images/staticSiteDeploy/unstagedChanges.png)

In the right side of the screen, you will see the changes you made to the file.

![Index Diff](/images/staticSiteDeploy/indexDiff.png)

We will now tell Git that we wish to commit these changes to our local version of history. To do this, make sure that
the checkbox next to public/index.html is checked. You will enter in a comment so that people who come after you will understand
the changes that you made. In this case, we will enter "Added pithy quote" into the Commit Summary box and
"This allows me to practice making changes to a file and pushing to Heroku" into the Extended description box.
Hitting the Commit button will record the change to the [Git commit history](http://git-scm.com/book/en/Git-Basics-Viewing-the-Commit-History){:target="_blank"}. Think of this history like a running record of all of the changes you make to a set of files, called a [repository](http://en.wikipedia.org/wiki/Repository_(version_control)){:target="_blank"}, similar to the list of all transactions you keep in your checking account.

![Staged Changes](/images/staticSiteDeploy/commitChanges.png)

You should see the file disappear from the left side of the screen. No worries, Git has recorded your change for safe keeping. You can check this by clicking on the "History" button in the upper left corner of the window.
Your commit should be at the top of the list.

![Commit](/images/staticSiteDeploy/commitDetails.png)

Now that you have confirmed that your changes are indeed working, you should push your changes back up to GitHub.
You can either use the Gui with the sync button or us the command line.

{% terminal %}
$ git push origin master
Counting objects: 6, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 321 bytes | 0 bytes/s, done.
Total 3 (delta 2), reused 0 (delta 0)
To git@github.com:yourUsername/restaurant_site.git
   7181a86..1472f4f  master -> master
{% endterminal %}

This step will
become more important as your team grows past one person so your team mates can [integrate your changes into their work](http://git-scm.com/book/en/Distributed-Git-Distributed-Workflows){:target="_blank"}.

You are now ready to share you change with the world by deploying your code to Heroku just like you did above.

{% terminal %}
$git push heroku master
Fetching repository, done.
Counting objects: 11, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (6/6), done.
Writing objects: 100% (7/7), 782 bytes | 0 bytes/s, done.
Total 7 (delta 2), reused 3 (delta 1)
-----> Ruby app detected
< lots of output >
-----> Launching... done, v4
       http://protected-caverns-4965.herokuapp.com deployed to Heroku
To git@heroku.com:protected-caverns-4965.git
   1c37fff..a9c22a3  master -> master
{% endterminal %}

You can confirm that your changes were deployed by opening up the browser. You may need to refresh the page to see the changes.

{% terminal %}
$heroku open
Opening protected-caverns-4965... done
{% endterminal %}

![After Changes](/images/staticSiteDeploy/afterChangesBrowser.png)

Congratulations, you have successfully deployed your first web site change to Heroku and have pushed them up to GitHub.
Go and grab an instructor and have them accept any stories that are awaiting acceptance.

## Homework Exercises

We have gone through a lot of Git functionality, both in the UI and on the command lin, in this lesson.
Your homework is to learn a bit more about Git using the command line instead of
the GitHub Gui. Please complete the following two online tutorials and come
prepared with any questions you have:

* [http://try.github.io/](http://try.github.io/){:target="_blank"}
* [http://gitimmersion.com/](http://try.github.io/){:target="_blank"}

As you take your Git learning deeper, you can check out the [free online book](http://git-scm.com/book){:target="_blank"} for
more information about Git and it's inner workings.