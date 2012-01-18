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

Tables: `style` property defines one of two types

+ *plain* Cells with optional header
+ *grouped*  Cells indented with rounded ends caps on top level cells.

There is a nice quick section on how cells are reused to keep memory usage down. Here is a gist that shows the basic pattern.  There is an identifier, `Cell`, that is added to each `UITableViewCell` created.  Once a cell rolls off the screen it becomes _available_ for reuse.

[Gist][2]

[2]: https://gist.github.com/1635477#file_table_cell_reuse_example.m "Table Cell Reuse Example"

	- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
	{
	    static NSString *CellIdentifier = @"Cell";
	    
	    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	    if (cell == nil) {
	        cell = [[UITableViewCell alloc] 
	               initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
	    }
	    
	    if (cell == nil) {
	        cell = [[UITableViewCell alloc] 
	               initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
	    }
	    cell.textLabel.text = [[self.dataSource recipeAtIndex:indexPath.row] title];
	    return cell;
	}
	
Datasource added to application mainly to extend application so we could delete items from the table.  The app started with an immutable array holding recipes.  The datasource did more than allowing delete.  It provided a clean separation between the model and the controller.  The datasource takes care of things like initializing the data and answers questions the table controller needs to know like the number of items.   


Version tag is **v2.0**

## Style and Convention ##

The accepted style now is to add an underscore to the ivar name in the `@synthesize` statement.  The was confirmed by the authors of the [book][1] and they site that even in Apple's templates you will see this convention followed.  In the book they slack off so I asked the question.

[Gist][3]

[3]: https://gist.github.com/1621809 "Convention for naming ivars"

	@synthesize recipes = _recipes;	 
	
	- (NSArray *)recipes {
	    if(nil == _recipes) {
	     // create the recipes
	    }
	    return _recipes;
	}

## Resources ##

[**Qh**][4] QuickHubApp is a great menu bar app for my Mac and just $1.99 at the [App Store][5].
It helps you to quickly access to [GitHub][6] directly from your status bar: Repositories, issues, gists, pull requests, users, organizations and watched repos are just one click away. QuickHub also provides Gists creation feature and will notify you when something changes on your GitHub artifacts.



[4]: http://quickhubapp.com/ "Quick Hub App website"
[5]: http://itunes.apple.com/us/app/quickhub/id476665193 "Quick Hub App on App Store"
[6]: http://github.com "GitHub"

