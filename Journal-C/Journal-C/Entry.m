//
//  Entry.m
//  Journal-C
//
//  Created by Diego Aguirre on 3/3/16.
//  Copyright © 2016 Diego Aguirre. All rights reserved.
//

#import "Entry.h"

@implementation Entry

- (instancetype)initWithTitle:(NSString *)title bodyText:(NSString *)bodyTitle timestamp:(NSDate *)timestamp {
    
    self = [super init];
    
    if (self) {
        _title = title;
        _bodyText = bodyTitle;
        _timestamp = timestamp;
    }
    
    return self;
}

@end
