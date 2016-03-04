//
//  Entry.m
//  Journal-C
//
//  Created by Diego Aguirre on 3/3/16.
//  Copyright © 2016 Diego Aguirre. All rights reserved.
//

#import "Entry.h"

static NSString * const titleKey = @"title";
static NSString * const bodyKey = @"bodyText";
static NSString * const timeStampKey = @"timestamp";

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

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    
    self = [super init];
    
    if (self) {
        _title = dictionary[titleKey];
        _bodyText = dictionary[bodyKey];
        _timestamp = dictionary[timeStampKey];
    }
    
    return self;
}

- (void)setTitle:(NSString *)title{
    
    _title = title;
}

- (NSDictionary *)dictionaryCopy {
    
    return @{titleKey: self.title,
             bodyKey: self.bodyText,
             timeStampKey: self.timestamp
             };
}


@end
