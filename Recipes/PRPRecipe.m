//
//  PRPRecipe.m
//  Recipes
//
//  Created by David Loeffler on 1/10/12.
//  Copyright (c) 2012 e-tuitive. All rights reserved.
//

#import "PRPRecipe.h"

@implementation PRPRecipe

@synthesize title;

- (id)init
{
    self = [super init];
    if (self) {
        self.title = @"New Recipe";
    }
    return self;
}
@end
