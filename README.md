# Recipe Program #

This project is from 
[iOS SDK Programming][1] by Chris Adamson and Bill Dudney. Beta 2.

[1]: http://pragprog.com/book/adios/ios-sdk-development "Beta Book from Pragmatic Programmers"

## Chapter 4 View Controllers ##

This is the introduction to the Recipe application.  Chapter 4 sets up the basic application and illustrates the MVC pattern. 

**Topics**

+ `application:didFinishLaunchingWithOptions:`
+ Sizing images

	You want to size your images to the placeholder you setup in the application.  Having iPhone or iPad do the resizing can drain battery faster.

+ `didRecieveMemoryWarning`
+ `viewDidUnload`

Version tag is **v1.0**

## Chapter 5 Table Views ##

Tables: _style_ property defines one of two types

+ *plain* Cells with optional header
+ *grouped*  Cells indented with rounded ends caps on top level cells.

Version tag is **v2.0**

## Style and Convention ##

The accepted style now is to add an underscore to the ivar name in the `@synthesize` statement.  The was confirmed by the authors of the [book][1] and they site that even in Apple's templates you will see this convention followed.  In the book they slack off so I asked the question.

<script src="https://gist.github.com/1621809.js?file=lazyRecipe.m"></script>
