//
//  EntryController.h
//  Journal-C
//
//  Created by Diego Aguirre on 3/3/16.
//  Copyright © 2016 Diego Aguirre. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

@interface EntryController : NSObject

@property (nonatomic, strong) NSMutableArray *entries;

- (void)addEntry:(Entry *)entry;
- (void)deleteEntry:(Entry *)entry;

+ (EntryController *)sharedInstance;

@end
