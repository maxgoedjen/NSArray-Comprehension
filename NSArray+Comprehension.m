//
//  NSArray+Comprehension.m
//
//  Created by Max Goedjen on 1/30/13.
//  Copyright (c) 2013 Max Goedjen. All rights reserved.
//

#import "NSArray+Comprehension.h"

@implementation NSArray (Comprehension)

- (NSArray *)arrayWithComprehension:(id(^)(id obj))comp {
    return [self arrayWithComprehension:comp ifCondition:^BOOL(id obj) {
        return YES;
    }];
}

- (NSArray *)arrayWithComprehension:(id(^)(id obj))comp ifCondition:(BOOL(^)(id obj))condition {
    NSMutableArray *arr = [NSMutableArray array];
    for (id obj in self) {
        if (condition(obj)) {
            id comprehended = comp(obj);
            [arr addObject:comprehended];
        }
    }
    return arr;
}

@end
