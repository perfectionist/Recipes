//
//  PRPAppDelegate.h
//  Recipes
//
//  Created by David Loeffler on 1/10/12.
//  Copyright (c) 2012 e-tuitive. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PRPRecipe.h"
#import "PRPRecipesListViewController.h"
#import "PRPRecipesSource.h"

@class PRPViewController;

@interface PRPAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) PRPRecipesListViewController *viewController;

@property (copy, nonatomic) NSArray *recipes;

@end
