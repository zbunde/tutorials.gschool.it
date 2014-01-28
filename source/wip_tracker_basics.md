# Introduction to Pivotal Tracker

## Goals
Student should be able to:

* Navigate the various panels of Tracker.
* Import stories into Tracker from a CSV.
* Understand what stories need to be worked on and in what order.
* Move stories through the flow from entry to completion for the various story types.
* Manage their solo work using Tracker by entering stories with good descriptions.

## XP practices learned

* Informative Workspace
* Stories (User Stories)

## History
* story-based project planning tool
* started as internal project at [Pivotal Labs](http://pivotallabs.com){:target="_blank"}
* tailored to Pivotal Labs practice of [agile software development](http://en.wikipedia.org/wiki/Agile_software_development){:target="_blank"}
* designed to bring transparency and communication to the development process
    * Surprises are a bad thing in software development
    * The sooner you can see slipping deadlines, the sooner you can plan for them.
* can be used to plan most anything, like weddings. :-)
* iOS app available in the App Store
* [Developer API](https://www.pivotaltracker.com/help/api?version=v5){:target="_blank"} available

## Dashboard
* Landing page when you log into Tracker

## Project Page
* where you will spend most of your time
* navigation bar on left, different groupings on the right
* panel controls at the bottom

## Story Panels
* My work - stories that you are working on or have been assigned to you. Spans multiple projects.
* Current/backlog - these are the stories that have been prioritized. Stories here are actionable.
* Icebox - stories that may or may not happen. Keep it clean just like your freezer at home.
* Done - a record of what your team has gotten done and accepted.
* Epics - a way to keep track of big chunks of work
* Labels - a way of grouping stories into various groups so you can find them easily

## Types of Stories
* Features
    * Stories that add visible business value to customers
    * Should be the bulk of your stories.
* Chores
    * Stories that do not add visible biz value but are necessary for the operation of the software
    * Examples: "sign up for access to geocoding service", "Find out why the detailed test suite takes so long"
* Bugs
    * Stories for things that are found to be "broken" after feature story has been accepted.
    * Typically arise because someone forgot to check something in story acceptance.
    * Should not be seen as bad since no software is perfect.
* Releases
    * Allow you to track progress towards larger, concrete goals
    * Examples: stakeholder or investor demos, software launches

## Ordering of stories
* Stories at the top of the current/backlog are the most important as determined by product owner
* Developers help product owner determine size and order of stories during an [iteration planning meeting](http://www.extremeprogramming.org/rules/iterationplanning.html){:target="_blank"}, also known as an IPM.
* Ideally, developers work on stories in order to maximize business value.

## Creation of stories
* Title - short description of what the story is about
* Story type - see reference above
* Points - determined during IPM.
    * For now we will mark everything as one point.
    * We will come back to this later in class.
* Description - opinions vary on amount of detail here.
    * For now, seek to put in too much detail rather than too little detail.
    * We will come back to this in depth as the class progresses.
* Labels - as you see fit
* Tasks - can be used to outline steps needed to complete a story
* Comments - Record activity, notes, etc on the story.
    * Over communication is rarely a bad thing.

## Story workflow

* Unestimated - these stories are off limits for work until estimated.
    * Allows product owner to
* Unstarted - ready to be worked on.
* Started - someone is actively working on the story and has responsibility for seeing it through to completion or asking for help.
* Finished - coding is complete but has not been deployed to a staging server for acceptance
* Delivered - code is ready for acceptance on a staging server
* Accepted - product owner like what she/he sees.
    * A job well done.
* Rejected - product owner wants changes.
    * You gave it your best shot with the information you had.
    * An opportunity to write some more code with more information from the product owner.

## Homework

1. Create a new Tracker project called "My work".
    * You will use this Tracker project as a means to manage any solo
work that you have during gSchool.
    * If you are working on something, there should be a Tracker story here for it.
1. Invite instructors(kinsey@gschool.it, mike@gschool.it and jeff@gschool.it) as members of this Tracker project.
    * Instructors will be monitoring Tracker projects as a way to measure individual and class progress throughout the class.
1. Import initial set of Tracker stories downloaded from [here](http://tutorials.gschool.it/trackerStories/initialStories.csv){:target="_blank"} into this project.

## References

[Getting Started in Tracker](https://www.pivotaltracker.com/help/gettingstarted){:target="_blank"}