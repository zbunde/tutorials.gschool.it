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
a web page from things like databases to customize the user experience. 
Sites like Twitter, Facebook and Amazon make heavy use of dynamic content.

## Getting started

* Fork and clone [https://github.com/gSchool/dynamic_restaurant_site](https://github.com/gSchool/dynamic_restaurant_site)
* Follow instructions in the [README](https://github.com/gSchool/dynamic_restaurant_site/blob/master/README.md)

Once the specs are running, you can start making changes.

## <a name="copyrightDate"></a>Dynamic Copyright Date

The restaurant owner is very happy with the landing page you have created for them but there is one issue
that they didn't think about. The year has changed but the copyright year at the bottom of the site is still
from last year. They would like it to change each year without having a developer change the page.
You decide that you can use ERB to make this work.

## <a name="itemList"></a>Listing dishes

The restaurant owners have told you that they will be changing their dishes frequently.  They'd like to make it
very cheap to change the menu items that show up on the homepage.  Each menu item has:

* A name
* A description
* A price
* An image

They provided this list in a CSV file.

## References

[ERB](http://ruby-doc.org/stdlib-2.1.1/libdoc/erb/rdoc/ERB.html){:target="_blank"}