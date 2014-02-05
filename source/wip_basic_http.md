# What happens when I request a web page? or Introduction to HTTP

[HTTP Spec](http://www.w3.org/Protocols/rfc2616/rfc2616.html){:target="_blank"}

## Goals
A student should be able to:

* Understand the [client/server model](http://en.wikipedia.org/wiki/Client%E2%80%93server_model){:target="_blank"} of computing
* Understand IP addresses
* Understand TCP ports, including what well known ports are and what the well known port is for HTTP
* Know what [HTTP](http://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol){:target="_blank"} stands for
* Draw the HTTP request/response loop, complete with DNS lookup
* Identify the 3 parts (url, verb, headers) of the HTTP request to a site in the Chrome Developer Tools
* Identify the 3 parts (response code, headers, body) of the HTTP response from a site in the Chrome Developer Tools
* Know where to look to find the server output from a request in the local development environment
* Know what curl is and what it is good for
* Break down a URL into protocol, host, port, path and query string
* Identify the 4 most widely used HTTP verbs and what they stand for
* Have a general understand of safe and idempotent verbs
* Know the 5 classes of responses
* Know the status code for OK, not found, redirected and server error responses
* Understand what is means to be a stateless protocol
* Understand basics of how web applications implement state over HTTP


## XP practices learned

* None

## Tech skill learned

* HTTP

## Steps for displaying http://www.livingsocial.com via HTTP

1. Issue a [DNS](http://en.wikipedia.org/wiki/Domain_Name_System){:target="_blank"} lookup to get the IP address of www.livingsocial.com.
    * `dig livingsocial.com`
    * Think of DNS like your contact book on your phone.

1. Browser uses [IP address](http://en.wikipedia.org/wiki/IP_address){:target="_blank"}, and a known [TCP port](http://en.wikipedia.org/wiki/Transmission_Control_Protocol#TCP_ports){:target="_blank"} of 80, to send HTTP request the LivingSocial servers.
    * IP addresses are like phone numbers for an office building
    * Ports are like mail boxes within that office building
    * [List of known ports](http://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers){:target="_blank"}
    * Can use the IP address directly if you knew it.
    * For high volume sites like google.com, it is a load balancer that hides the fact that there are hundreds of computers servicing requests.

1. Server processes the request, maybe making requests to other servers like database servers, and sends back the dynamic HTML response for google.com.
    * You can see the request and response in the [Chrome developer tools](https://developers.google.com/chrome-developer-tools/){:target="_blank"}.
    * Show server side using the students application

1. Browser makes more requests, and receives responses, for other things that it needs to complete the web page, like images, CSS and Javascript.
    * All requests/responses have the same structure
    * Show a CSS and image request.

1. Browser puts it all together and draws the pretty picture on the screen.

1. You can also use text based tools like [curl](http://en.wikipedia.org/wiki/CURL){:target="_blank"}
to interact with web servers
    * `curl -v livingsocial.com` - 301 Redirect to https://www.livingsocial.com
    * `curl https://www.livingsocial.com` - 200 OK with a lot of text

## Sending a request the server
* [URL](http://en.wikipedia.org/wiki/URL){:target="_blank"}
    * Identify the parts of a URL
* [HTTP verbs](http://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html){:target="_blank"}
    * GET - get me a list of things
    * POST - create me a new thing
    * PUT - update a thing
    * DELETE - delete a thing
    * Safe and idempotent verbs
* [Request headers](http://en.wikipedia.org/wiki/List_of_HTTP_header_fields){:target="_blank"}
    * The browser telling the server what it can handle
    * Key/value pairs
    * Show them in the Dev Tools

## Getting a response from the server
* [Response codes](http://en.wikipedia.org/wiki/List_of_HTTP_status_codes){:target="_blank"}
    * 5 different classes of response codes
    * 1xx Informational
    * 2xx Success
    * 3xx Redirection
    * 4xx Client error
        * 418 I'm a teapot (RFC 2324) - my favorite :-)
    * 5xx Server error
    * Most common
        * 200 - OK
        * 301 or 302 - Redirected
            * see http://www.livingsocial.com vs https://www.livingsocial.com in curl
        * 404 - Not Found
        * 500 - Internal Server error
* [Response headers](http://en.wikipedia.org/wiki/List_of_HTTP_header_fields){:target="_blank"}
    * Server telling the client information about the response
    * Key/value pairs
    * Show them in the Dev Tools
* Response body
    * The goods

## HTTP as a [stateless protocol](http://en.wikipedia.org/wiki/Stateless_server){:target="_blank"}

* Server does not remember anything about the request once it is done processing it.
* Client has to provide enough information for server to "remember" you on subsequent requests.
* Various techniques:
    * [Cookies](http://en.wikipedia.org/wiki/HTTP_cookie){:target="_blank"}
        * show in Chrome Dev Tools
        * key/value pairs
        * limited in size to 4kB
        * Rails 3 - can be signed to prevent tampering with but sent in plain text
        * Rails 4 - signed and encrypted so end users can not read it
    * Hidden form fields
        * &lt;input type="hidden"&gt;
    * [Query string](http://en.wikipedia.org/wiki/Query_string){:target="_blank"}
        * http://example.com/search?q=pizza&numRecords=100
        * key/value pairs
    * Server side session via cookies/hidden form fields
        * store state on server identified by information in cookie/hidden form field
