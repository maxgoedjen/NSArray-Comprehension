//
//  NSArray+Comprehension.h
//
//  Created by Max Goedjen on 1/30/13.
//  Copyright (c) 2013 Max Goedjen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Comprehension)

- (NSArray *)arrayWithComprehension:(id(^)(id obj))comp;
- (NSArray *)arrayWithComprehension:(id(^)(id obj))comp ifCondition:(BOOL(^)(id obj))condition;

@end
