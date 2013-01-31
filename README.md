NSArray-Comprehension
=====================

Python-like array comprehensions for Objective-C

Examples
========

Square list of NSNumbers

	NSArray *test = @[@1, @2, @3, @4, @5];
    NSArray *comp = [test arrayWithComprehension:^id(id obj) {
    	return @([obj intValue] * [obj intValue]);
    }];

Filtering is also supported

    NSArray *comp = [test arrayWithComprehension:^id(id obj) {
    	return @([obj intValue] * [obj intValue]);
    } ifCondition:^BOOL(id obj) {
    	return ([obj intValue] % 2 == 0);
    }];