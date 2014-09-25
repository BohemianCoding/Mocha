//
//  MOBox.m
//  Mocha
//
//  Created by Logan Collins on 5/12/12.
//  Copyright (c) 2012 Sunflower Softworks. All rights reserved.
//

#import "MOBox.h"

extern BOOL logging;

@implementation MOBox

- (void)dealloc {
    if (logging)
        NSLog(@"I'm off");
}
@end
