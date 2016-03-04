//
//  Entry.h
//  Journal-C
//
//  Created by Diego Aguirre on 3/3/16.
//  Copyright © 2016 Diego Aguirre. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Entry : NSObject

@property (nonatomic, strong) NSDate *timestamp;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *bodyText;

@property (copy, nonatomic) NSDictionary *dictionaryCopy;

- (instancetype)initWithTitle:(NSString *)title bodyText:(NSString *)bodyTitle timestamp:(NSDate *)timestamp;
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;


@end
