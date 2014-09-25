//
//  MOUndefined.m
//  Mocha
//
//  Created by Logan Collins on 5/15/12.
//  Copyright (c) 2012 Sunflower Softworks. All rights reserved.
//

#import "MOUndefined.h"

extern BOOL logging;

@implementation MOUndefined

static MOUndefined *__sharedInstance = nil;

+ (MOUndefined *)undefined {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        __sharedInstance = [[self alloc] init];
    });
    if (logging)
        NSLog(@"%s", __FUNCTION__);
    return __sharedInstance;
}

- (BOOL)isEqual:(id)object {
    if (logging)
        NSLog(@"%s", __FUNCTION__);
    return [object isKindOfClass:[MOUndefined class]];
}

- (NSUInteger)hash {
    if (logging)
        NSLog(@"%s", __FUNCTION__);
    return [__sharedInstance hash];
}

@end
