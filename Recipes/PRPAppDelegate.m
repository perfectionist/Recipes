//
//  PRPAppDelegate.m
//  Recipes
//
//  Created by David Loeffler on 1/10/12.
//  Copyright (c) 2012 e-tuitive. All rights reserved.
//

#import "PRPAppDelegate.h"

@implementation PRPAppDelegate

@synthesize window = _window;

@synthesize viewController = _viewController;

@synthesize recipes = _recipes;

- (NSArray *)recipes {
    if(nil == _recipes) {
        NSMutableArray *localRecipes = [NSMutableArray array];
        PRPRecipe *recipe = [[PRPRecipe alloc] init];
        recipe.directions = @"0 - Put some stuff in, and the other stuff, then stir"; recipe.title = @"0 - One Fine Food";
        recipe.image = [UIImage imageNamed:@"IMG_1948.jpg"];
        [localRecipes addObject:recipe];

        recipe = [[PRPRecipe alloc] init];
        recipe.directions = @"1 - Put some stuff in, and the other stuff, then stir"; recipe.title = @"1 - One Fine Food";
        recipe.image = [UIImage imageNamed:@"IMG_1948.jpg"];
        [localRecipes addObject:recipe];
        
        recipe = [[PRPRecipe alloc] init];
        recipe.directions = @"2 - Put some stuff in, and the other stuff, then stir";
        recipe.title = @"2 - One Fine Food";
        recipe.image = [UIImage imageNamed:@"IMG_1948.jpg"];
        [localRecipes addObject:recipe];
        
        recipe = [[PRPRecipe alloc] init];
        recipe.directions = @"3 - Put some stuff in, and the other stuff, then stir";
        recipe.title = @"3 - One Fine Food";
        recipe.image = [UIImage imageNamed:@"IMG_1948.jpg"];
        [localRecipes addObject:recipe];
        
        recipe = [[PRPRecipe alloc] init];
        recipe.directions = @"4 - Put some stuff in, and the other stuff, then stir";
        recipe.title = @"4 - One Fine Food";
        recipe.image = [UIImage imageNamed:@"IMG_1948.jpg"];
        [localRecipes addObject:recipe];
        
        recipe = [[PRPRecipe alloc] init];
        recipe.directions = @"5 - Put some stuff in, and the other stuff, then stir";
        recipe.title = @"5 - One Fine Food";
        recipe.image = [UIImage imageNamed:@"IMG_1948.jpg"];
        [localRecipes addObject:recipe];

        NSString *directions = @"Put the flour and other dry ingredients in a bowl, \
        stir in the eggs until evenly moist. Add chocolate chips and stir in until even. \
        Place tablespoon sized portions on greased cookie sheet and bake at 350Â° for \
        6 minutes.";
        recipe = [[PRPRecipe alloc] init];
        recipe.title = @"Chocolate Chip Cookies";
        recipe.image = [UIImage imageNamed:@"IMG_1948.jpg"];
        recipe.directions = directions;
        [localRecipes addObject:recipe];
        
        self.recipes = localRecipes;
    }
    return _recipes;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.viewController = [[PRPRecipesListViewController alloc] initWithNibName:@"PRPRecipesListViewController" bundle:nil];
    self.window.rootViewController = self.viewController;
    self.viewController.recipes = self.recipes;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
