//
//  EntryController.m
//  Journal-C
//
//  Created by Diego Aguirre on 3/3/16.
//  Copyright © 2016 Diego Aguirre. All rights reserved.
//

#import "EntryController.h"

@implementation EntryController

- (void)addEntry:(Entry *)entry {
    
}

- (void)deleteEntry:(Entry *)entry {
    
}

+ (EntryController *)sharedInstance {
    
    static EntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [EntryController new];
    });
    
    return sharedInstance;
}

@end
