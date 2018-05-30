//
//  NSArray+Functional.m
//  NSArray-Extension
//
//  Created by 刘俊臣 on 2018/5/29.
//

#import "NSArray+Functional.h"

@implementation NSArray (Functional)
- (NSArray *)filter:(BOOL (^)(id))filter{
    NSMutableArray *tmpArray = [NSMutableArray arrayWithCapacity:0];
    for (id obj in self) {
        if (filter(obj)) {
            [tmpArray addObject:obj];
        }
    }
    return [NSArray arrayWithArray:tmpArray];
}
- (BOOL)containsObjectWhere:(BOOL (^)(id))condition {
    BOOL contains = false;
    for (id obj in self) {
        if (condition(obj)) {
            contains = true;
            break;
        }
    }
    return contains;
}
- (NSArray *)map:(id (^)(id))transfer{
    NSMutableArray *tmpArray = [NSMutableArray arrayWithCapacity:0];
    for (id obj in self) {
        id outputObj = transfer(obj);
        if (outputObj) {
            [tmpArray addObject:outputObj];
        }
    }
    return [NSArray arrayWithArray:tmpArray];
}
- (id)firstObjectWhere:(BOOL (^)(id))condition{
    id outputObjc = nil;
    for (id objc in self) {
        if (condition(objc)) {
            outputObjc = objc;
            break;
        }
    }
    return outputObjc;
}
@end
