#Setting up your computer

You will be spending a lot of time in front of a computer using many different, unfamiliar tools during your time at gSchool. This tutorial will guide you through installing the basic tools we will use. In addition to simply installing the tools, you should take a little time reading each website to understand where each tool fits into your toolbox (also called the toolchain) as a developer. This will help you long term as you form a mental model of the world of software development.

## <a name="keyboardSetup"></a>Change some of the default OS X keyboard settings
In order to make things a bit easier when developing, we are going to change a couple of the default keyboard settings on OS X.

Make function keys standard function keys under Apple Icon...System Preferences...Keyboard:

![Standard Function Keys](/images/computerSetup/standardFunctionKeys.png)

This will allow us to use these function keys in RubyMine (installed later) as well as other programs that use them. If you want to use
the shortcuts associated with the function keys (like volume control) you can hold down the fn key and then press the
proper function key.

Change Caps Lock key operate the same as the control key under Apple Icon...System Preferences...Keyboard:

![Keyboard Modifier Keys](/images/computerSetup/keyboardModifierKeys.png)

![Caps Lock is Control](/images/computerSetup/keyboardCapsLockKey.png)

Not many developers use the Caps Lock key but the control key is used all of the time so we will make it easier to hit the control key.

Tab to all controls under Apple Icon...System Preferences...Keyboard:

![Tab to all controls](/images/computerSetup/keyboardTabToAllControls.png)

This will allow us to use the keyboard to more easily move around the screen. Using the keyboard over the mouse to move around save a bit of time
when coding and can help you get things done a bit more quickly and efficiently.

Unbind existing F11 and F12 keys under Apple Icon...System Preferences...Mission Control:

![Unbind existing function keys](/images/computerSetup/unbindExistingFunctionKeys.png)

This will allow us to use all of the function keys in RubyMine.

## <a name="workDirectory"></a>Create directory that will house all of your classwork.

As developers, we collect a lot of source code and artifacts for our various projects. Knowing where to easily find everything is a good skill to have, just like when you go looking for that pair of shoes. If you know they are in a specific closet and that closet is clean, they are easy to find. If you have no idea which closet they are in and each closet is messy, they will take a long time to find. 

As a starting point, you should use one [directory](http://en.wikipedia.org/wiki/Directory_(computing)){:target="_blank"} to house all of your code for gSchool. You will develop your own organizational structure within this directory throughout the class. Remember your goal is to easily find things as we go through class.

Use [this tutorial](http://blog.teamtreehouse.com/introduction-to-the-mac-os-x-command-line){:target="_blank"} to create a new directory called "gSchoolWork" in your [home directory](http://en.wikipedia.org/wiki/Home_directory){:target="_blank"}, also known as home folder, using the command line interface.

When you are done, you can confirm that you did it properly by typing `ls -l ~` at the command line and seeing the gSchoolWork directory listed. If you see the directory, you can mark the story as completed in Tracker.

{% terminal %}
$ ls -l ~
total 0
drwx------+  4 user  staff   136 Dec 24 10:50 Desktop
drwx------+  3 user  staff   102 Dec 20 15:36 Documents
drwx------+  4 user  staff   136 Dec 20 15:36 Downloads
drwx------@ 39 user  staff  1326 Dec 31 08:27 Library
drwx------+  3 user  staff   102 Dec 20 15:36 Movies
drwx------+  3 user  staff   102 Dec 20 15:36 Music
drwx------+  3 user  staff   102 Dec 20 15:36 Pictures
drwxr-xr-x+  5 user  staff   170 Dec 20 15:36 Public
drwxr-xr-x   2 user  staff    68 Dec 31 09:03 gSchoolWork
{% endterminal %}

## <a name="homebrew"></a>Install Homebrew

[Homebrew](http://brew.sh/){:target="_blank"} is a tool that will allow you to easily install development tools to your Mac from source code. We will be using it throughout the class to install various tools as we need them.

You will follow the instructions on the website to get it installed. When prompted to enter your password, use the password that you use to unlock your computer. When you are asked to install the command line tools, click the "Install" button. You do not need to install a full copy of XCode. Copy the code below into the terminal to begin installing.

{% terminal %}
$ ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
==> This script will install:
< lots of output >
You should run `brew doctor' *before* you install anything.
Now type: brew help
{% endterminal %}

You can get an idea of what Homebrew offers you as far as commands by running `brew help`.

{% terminal %}
$ brew help
Example usage:
< lots of output >
{% endterminal %}

When the installation is complete, you should use `brew doctor` to make sure everything is running smoothly.

{% terminal %}
$ brew doctor
Your system is ready to brew.
{% endterminal %}

## <a name="rvm"></a>Install RVM

[RVM](http://rvm.io/){:target="_blank"} (Ruby Version Manager) is a program that allows you to easily install and manage Ruby versions and installed Ruby libraries, called [Gems](http://en.wikipedia.org/wiki/RubyGems){:target="_blank"} . These libraries are managed via a site called [RubyGems.org](http://rubygems.org/){:target="_blank"}.

{% terminal %}
$ \curl -sSL https://get.rvm.io | bash -s stable
Downloading https://github.com/wayneeseguin/rvm/archive/stable.tar.gz
< lots of output >
{% endterminal %}

After the installation completes, close the Terminal program using the keys <command>-q (hold down command key while you hit the q key) and reopen the terminal to confirm that the installation completed properly.

{% terminal %}
$ rvm info
< lots of output >
system:
    uname: "Darwin Users-Mac.local 13.0.0 Darwin Kernel Version 13.0.0: Thu Sep 19 22:22:27 PDT 2013; ...
    system: "osx/10.9/x86_64"
    bash: "/bin/bash => GNU bash, version 3.2.51(1)-release (x86_64-apple-darwin13)"
    zsh: "/bin/zsh => zsh 5.0.2 (x86_64-apple-darwin13.0)"
< lots of output >
{% endterminal %}

## <a name="ruby21"></a>Install Ruby 2.1

OS X Mavericks, the [operating system](http://en.wikipedia.org/wiki/Operating_system){:target="_blank"} for you Mac, comes with a version of Ruby installed but it is not the latest and greatest. We will use RVM to install the latest version of Ruby, 2.1. If prompted for a password, use the password you use to unlock your computer. While you are waiting for Ruby to compile, read about Ruby:

* https://www.ruby-lang.org/en/about/
* http://en.wikipedia.org/wiki/Ruby_(programming_language)

{% terminal %}
$ rvm install ruby-2.1.0
Searching for binary rubies, this might take some time.
Found remote file https://rvm.io/binaries/osx/10.9/x86_64/ruby-2.1.0.tar.bz2
< lots of output >
{% endterminal %}

To confirm that Ruby 2.1.0 is installed correctly, ask for the version at the command line.

{% terminal %}
$ ruby \--version
ruby 2.1.0p0 (2013-12-25 revision 44422) [x86_64-darwin12.0]
{% endterminal %}

## <a name="bundler"></a>Install Bundler [RubyGem](http://en.wikipedia.org/wiki/RubyGems){:target="_blank"}

[Bundler](http://bundler.io/){:target="_blank"} is a Ruby [library](http://en.wikipedia.org/wiki/Library_(computing)){:target="_blank"}, also known as a gem, that allows you to
easily manage the [dependencies](http://en.wikipedia.org/wiki/Dependency_(computer_science)){:target="_blank"} of a Ruby application.

{% terminal %}
$ gem install bundler
Fetching: bundler-1.5.1.gem (100%)
Successfully installed bundler-1.5.1
Parsing documentation for bundler-1.5.1
Installing ri documentation for bundler-1.5.1
Done installing documentation for bundler after 3 seconds
1 gem installed
{% endterminal %}

## <a name="chrome"></a>Install Chrome browser

Chrome will be our primary development browser because of the great built in [development tools](https://developers.google.com/chrome-developer-tools/){:target="_blank"}. If you typically use another browser, please get familiar with Chrome.

You can install the Chrome Browser [here](https://www.google.com/intl/en/chrome/browser/).
Click on the download once it is complete to open it. Then, drag the Chrome application to your applications folder as prompted.

To confirm successful installation, open up the Chrome browser from the Applications directory and set it as your default browser. It will ask you to sign in with your Google account. This is optional.



## <a name="screenhero"></a>Install ScreenHero

We will be doing a lot of pair programming throughout the course. We will start out using [ScreenHero](http://screenhero.com/){:target="_blank"} to support pair programming.

To confirm proper installation, add mgehard@pivotallabs.com as a contact. 

First start ScreenHero:

![ScreenHero Started](/images/computerSetup/screenheroStarted.png)

Then add the contact:

![Add ScreenHero Contact](/images/computerSetup/addContact.png)

## <a name="githubGui"></a>Install GitHub git GUI client

We will be using [Git](http://git-scm.com/){:target="_blank"} as our [version control](http://en.wikipedia.org/wiki/Revision_control){:target="_blank"} software. In order to easily interact with Git early in the class, we will use a [GUI](http://en.wikipedia.org/wiki/Graphical_user_interface){:target="_blank"} client from GitHub.

First you will download the client from [http://mac.github.com](http://mac.github.com){:target="_blank"} and open it from the Downloads folder.

![Open GitHub client](/images/computerSetup/openGithubClient.png)

You should allow it to move the application to your Applications directory. Remember it is a good idea to keep your computer clean.

![Move GitHub client](/images/computerSetup/moveGithubClient.png)

Use the client to help set up Git configuration file (.gitconfig).

![Git Setup](/images/computerSetup/gitSetup1.png)

Enter in your GitHub username and password. These are the ones that you set up for the pre-requisites for gSchool.

![Git Setup](/images/computerSetup/gitSetup2.png)

![Git Setup](/images/computerSetup/gitSetup3.png)

Make sure your name and email address are correct.

![Git Setup](/images/computerSetup/gitSetup4.png)

No need to set up local repositories since you do not have any.

![Git Setup](/images/computerSetup/gitSetup5.png)

When the main window appears, you are all done.

![Git Setup](/images/computerSetup/gitSetupDone.png)

## <a name="rubymine"></a>Install and Configure RubyMine IDE

### Installation

We will be using [RubyMine](http://www.jetbrains.com/ruby/){:target="_blank"} as our primary [IDE](http://en.wikipedia.org/wiki/Integrated_development_environment){:target="_blank"}. Yes there are many others and you
can investigate them on your own time but in class you will be expected to use RubyMine configured
in a certain way. The main reason for this rigidity is that we want people to be able to easily pair with everyone else in the class. If you using an editor, and keyboard shortcuts, that others don't know, it will be harder for
them to efficiently pair with you on your machine. If you still have questions about this decision, please chat with an instructor.

Grab a USB drive from an instructor with the latest RubyMine on it and open the [.dmg disk image](http://en.wikipedia.org/wiki/Apple_Disk_Image){:target="_blank"}. You can then drag the RubyMine icon into the folder on the right. This
will copy RubyMine to your Applications directory.

Open RubyMine using Spotlight (COMMAND-space). This may ask you to install a Java Runtime. If it does, click OK and wait for it to install.

After it installs, you can re-open RubyMine and it may ask you for a license:

![RubyMine License](/images/computerSetup/rubymineLicense.png)

You can find that license information on the USB stick. Accept the license terms:

![License Terms](/images/computerSetup/rubymineLicenseTerms.png)

You can then set the default key bindings and the color scheme and restart the IDE:

![Defaults](/images/computerSetup/rubymineDefaults.png)

### Configuration

Many of the out of the box settings for RubyMine don't necessarily line up with what the industry is using. This section will take you through the various configuration settings that you should only
have to set after the initial installation of RubyMine. To get to the preferences panel follow this series of mouse clicks:

![OpenPreferences1](/images/computerSetup/rubymineOpenPreferences1.png)

![OpenPreferences2](/images/computerSetup/rubymineOpenPreferences2.png)

You can always get back to this preferences panel by hitting COMMAND-, or selecting RubyMine...Preferences... from the top menu.

#### Tab Sizes

By default, when you type TAB, Rubymine inserts spaces.  This is good, but sometimes it inserts too many spaces by default.

In this section, you'll set all your TAB sizes to be 2 spaces to be more in line to what the community is using:

![description](/images/computerSetup/rubymine-tab-size-general.png)

![description](/images/computerSetup/rubymine-tab-size-ruby.png)

![description](/images/computerSetup/rubymine-tab-size-haml.png)

![description](/images/computerSetup/rubymine-tab-size-javascript.png)

![description](/images/computerSetup/rubymine-tab-size-sass.png)

![description](/images/computerSetup/rubymine-tab-size-scss.png)

#### Appearance

Being able to communicate with someone via a line number in a file is the quickest way to get everyone on the same page. By default RubyMine doesn't do this so we need to turn on showing line numbers:

![description](/images/computerSetup/rubymine-appearance-show-line-numbers.png)

#### Keep more items on your clipboard

When you copy or cut something to your clipboard, Rubymine doesn't just remember the last thing you copied / pasted,
it remembers several.  By default this limit is 5, but you can easily increase it:

![description](/images/computerSetup/rubymine-editor-clipboard.png)

#### Editor Tabs

When you open multiple files in Rubymine, they open in tabs.  By default, if you have lots of files open, it displays
those tabs in multiple rows, which takes away valuable space from your editor. These settings will give you more room
on your screen:

![description](/images/computerSetup/rubymine-editor-tabs.png)


## <a name="sshKey"></a>Generate an SSH key

There are many ways to prove your identity to a remote website. The predominant way is by using a username/password combination. Another way it to use something called an [SSH Key](https://wiki.archlinux.org/index.php/SSH_Keys){:target="_blank"}. We will use SSH keys when communicating with various servers on the Internet.

The first step in using SSH keys is to generate one. GitHub provides a great tutorial on how to generate an SSH key and how to associate it with your GitHub account. Please follow [this tutorial](https://help.github.com/articles/generating-ssh-keys){:target="_blank"} all the way through step 4. **Also, please add a password to your ssh key as outlined in step 2.**

If you run the `cd ~/.ssh` command and you get the message that looks like `-bash: cd: /Users/user/.ssh: No such file or directory`, you don't have an ssh key and you can continue to step 2. When you get to step 2, the ssh-add command should look like this:

{% terminal %}
$ ssh-add ~/.ssh/id_rsa
{% endterminal %}

If you already have an SSH key as identified by step 1, please make sure that you add a password to the key using [this guide](https://help.github.com/articles/working-with-ssh-key-passphrases){:target="_blank"} before continuing to step 3.

## <a name="heroku"></a>Create Heroku account

We will be using [Heroku](http://heroku.com){:target="_blank"} to quickly and easily deploy applications to the Web. If you already have a Heroku account, please scroll down to the "I have a Heroku account" section. If you do not already have one set up, please follow the instructions below:

You should sign up for an account on their site.

Remember your username and password. You will need that any time you want to access the Heroku website. 

The next step is to install the [Heroku toolbelt](http://toolbelt.heroku.com){:target="_blank"}, software that allows you to easily deploy appilications to Heroku. Download and install the toolbelt from the welcome screen that you get when you create your account.

You will then need to open a terminal window and log into Heroku for the first time.

{% terminal %}
$ heroku login
Enter your Heroku credentials.
Email: user@example.com
Password (typing will be hidden): 
Found existing public key: /Users/user/.ssh/id_rsa.pub
Uploading SSH public key /Users/user/.ssh/id_rsa.pub... done
Authentication successful.
{% endterminal %}

You should also push a test application from Heroku just to make sure that everything is wired up properly. 

{% terminal %}
$ cd gSchoolWork
$ git clone git://github.com/heroku/ruby-sample.git
Cloning into 'ruby-sample'...
remote: Reusing existing pack: 16, done.
remote: Total 16 (delta 0), reused 0 (delta 0)
Receiving objects: 100% (16/16), done.
Resolving deltas: 100% (1/1), done.
Checking connectivity... done
$ cd ruby-sample/
Users-Mac:ruby-sample user$ heroku create
Creating afternoon-harbor-4586... done, stack is cedar
http://afternoon-harbor-4586.herokuapp.com/ | git@heroku.com:afternoon-harbor-4586.git
Git remote heroku added
$ git push heroku master
The authenticity of host 'heroku.com (50.19.85.132)' can't be established.
RSA key fingerprint is 8b:48:5e:67:0e:c9:16:47:32:f2:87:0c:1f:c8:60:ad.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added 'heroku.com,50.19.85.132' (RSA) to the list of known hosts.
Initializing repository, done.
Counting objects: 16, done.
Delta compression using up to 2 threads.
Compressing objects: 100% (13/13), done.
Writing objects: 100% (16/16), 1.94 KiB | 0 bytes/s, done.
Total 16 (delta 1), reused 16 (delta 1)
-----> Ruby app detected
< lots of output >
To git@heroku.com:afternoon-harbor-4586.git
 * [new branch]      master -> master
$ heroku open
Opening afternoon-harbor-4586... done
{% endterminal %}

When you see "Hello, world" in the newly opened browser window your Heroku installation is complete and working. You can delete the ruby-sample directory using `rm -rf`.

![Heroku setup complete](/images/computerSetup/herokuInstalled.png)

{% terminal %}
$ rm -rf ~/gSchoolWork/ruby-sample
{% endterminal %}

## I already have a Heroku account

If you don't have the Heroku toolbelt already, install it [here](http://toolbelt.heroku.com){:target="_blank"}. The toolbelt is software that allows you to easily deploy applications to Heroku. You will then need to open a terminal window and log into Heroku for the first time.

Make sure that you are in the correct directory and clone the ruby-sample app
{% terminal %}
$ cd gSchoolWork
$ git clone git://github.com/heroku/ruby-sample.git
Cloning into 'ruby-sample'...
remote: Reusing existing pack: 16, done.
remote: Total 16 (delta 0), reused 0 (delta 0)
Receiving objects: 100% (16/16), done.
Resolving deltas: 100% (1/1), done.
Checking connectivity... done
$ cd ruby-sample/
{% endterminal %}

Visit your Heroku account in your [browser](https://dashboard.heroku.com/apps).

At the bottom of your app dashboard page, click 'Create a New App'. Call it ruby-sample-test, create the app, and copy the Git URL.

Back in your terminal, type the following commands to add the remote Heroku branch and keys and then push to Heroku. Replace the generic Git URL with the one you just copied from your app (git@heroku.com:app name.git).
{% terminal %}
$ git remote add heroku git@heroku.com:app name.git
$ heroku keys:add
Found existing public key: /Users/adam/.ssh/id_rsa.pub
Uploading SSH public key /Users/adam/.ssh/id_rsa.pub... done
$ git push heroku master
The authenticity of host 'heroku.com (50.19.85.132)' can't be established.
RSA key fingerprint is 8b:48:5e:67:0e:c9:16:47:32:f2:87:0c:1f:c8:60:ad.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added 'heroku.com,50.19.85.132' (RSA) to the list of known hosts.
Initializing repository, done.
Counting objects: 16, done.
Delta compression using up to 2 threads.
Compressing objects: 100% (13/13), done.
Writing objects: 100% (16/16), 1.94 KiB | 0 bytes/s, done.
Total 16 (delta 1), reused 16 (delta 1)
-----> Ruby app detected
< lots of output >
To git@heroku.com:afternoon-harbor-4586.git
 * [new branch]      master -> master
$ heroku open
Opening afternoon-harbor-4586... done
{% endterminal %}

When you see "Hello, world" in the newly opened browser window your Heroku installation is complete and working. You can delete the ruby-sample directory using `rm -rf`.

Also, you can delete the app you created on Heroku by clicking the 'Delete App' button at the bottom of the settings page.

![Heroku setup complete](/images/computerSetup/herokuInstalled.png)

## <a name="exercism"></a>Install Exercism CLI tool

[Exercism](http://exercism.io){:target="_blank"} is a site that allows a user to quickly download small practice exercises in a variety
of languages. We will be using Exercism.io to download Ruby exercises for warmup and other drills.

First you need to download the latest [CLI tool from GitHub](https://github.com/exercism/cli/releases/latest){:target="_blank"}. You want
the "exercism-darwin-amd64.tgz" version. This is the [64 bit version](http://en.wikipedia.org/wiki/64-bit_computing){:target="_blank"}
for the Apple OS X operating system (aka [Darwin](http://en.wikipedia.org/wiki/Darwin_(operating_system)){:target="_blank"}).

Next, you need to extract the command line tool into your [path](https://www.cs.purdue.edu/homes/cs348/unix_path.html){:target="_blank"}, also see [here for more information](http://en.wikipedia.org/wiki/PATH_(variable)){:target="_blank"}.

{% terminal %}
$tar -xvf ~/Downloads/exercism-darwin-amd64.tgz -C /usr/local/bin/
x exercism
{% endterminal %}

You can then confirm that the CLI is set up properly in your path.

{% terminal %}
$ exercism --version
exercism version 1.3.2
{% endterminal %}

You need to then set up an Exercism.io account via GitHub by navigating to the [site](http://exercism.io/){:target="_blank"} and clicking the "Start Now" button.

![Exercism account creation](/images/computerSetup/exercismSetup.png)

When you see this screen, you know that your account has been set up.

![Exercism account creation success](/images/computerSetup/exercismSuccess.png)

You should then create a new diretory for your Exercism exercises.

{% terminal %}
$ mkdir -p ~/gSchoolWork/exercism
{% endterminal %}

Now log into using the CLI within the newly created directory and fetch the first set of exercises, using the default directory, and the API key
you get from the account section.

![Exercism account](/images/computerSetup/exercismAccount.png)

{% terminal %}
$ cd ~/gSchoolWork/exercism
$ exercism login
Your GitHub username: msgehard
Your exercism.io API key: < get this from the account section of Exercism.io >
What is your exercism exercises project path?
Press Enter to select the default (/Users/user/gSchoolWork/exercism):
>
Your credentials have been written to /Users/user/.exercism.go
$ exercism fetch
clojure - bob
coffeescript - bob
elixir - bob
go - leap
haskell - bob
javascript - bob
objective-c - bob
ocaml - bob
perl5 - bob
python - bob
ruby - bob
scala - bob
{% endterminal %}

If everything went well, you should have a bunch of new directories in your exercism directory.

{% terminal %}
$ ls -l
total 0
drwxr-xr-x  3 user  staff  102 Jan 13 08:37 clojure
drwxr-xr-x  3 user  staff  102 Jan 13 08:37 coffeescript
drwxr-xr-x  3 user  staff  102 Jan 13 08:37 elixir
drwxr-xr-x  3 user  staff  102 Jan 13 08:37 go
drwxr-xr-x  3 user  staff  102 Jan 13 08:37 haskell
drwxr-xr-x  3 user  staff  102 Jan 13 08:37 javascript
drwxr-xr-x  3 user  staff  102 Jan 13 08:37 objective-c
drwxr-xr-x  3 user  staff  102 Jan 13 08:37 ocaml
drwxr-xr-x  3 user  staff  102 Jan 13 08:37 perl5
drwxr-xr-x  3 user  staff  102 Jan 13 08:37 python
drwxr-xr-x  3 user  staff  102 Jan 13 08:37 ruby
drwxr-xr-x  3 user  staff  102 Jan 13 08:37 scala
{% endterminal %}

We will be using the ruby one only so if you can delete the rest of them if you'd like.

{% terminal %}
$ rm -rf clojure coffeescript elixir go haskell javascript objective-c ocaml perl5 python scala
$ ls -l
drwxr-xr-x  3 user  staff  102 Jan 13 08:37 ruby
{% endterminal %}

Congratulations, you now have a basic Ruby tool chain installed on your computer!
