//
//  MOPointerValue.m
//  Mocha
//
//  Created by Logan Collins on 7/26/12.
//  Copyright (c) 2012 Sunflower Softworks. All rights reserved.
//

#import "MOPointerValue.h"


@interface MOPointerValue ()

@property (readwrite) void * pointerValue;
@property (copy, readwrite) NSString *typeEncoding;

@end


@implementation MOPointerValue

- (instancetype)initWithPointerValue:(void *)pointerValue typeEncoding:(NSString *)typeEncoding {
    self = [super init];
    if (self) {
        self.pointerValue = pointerValue;
        self.typeEncoding = typeEncoding;
    }
    return self;
}

- (NSString *)description {
    if ([self.typeEncoding length] > 0) {
        return [NSString stringWithFormat:@"<%p type=%@>", self.pointerValue, self.typeEncoding];
    }
    else {
        return [NSString stringWithFormat:@"<%p>", self.pointerValue];
    }
}

@end
