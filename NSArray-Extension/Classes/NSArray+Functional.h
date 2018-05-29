//
//  NSArray+Functional.h
//  NSArray-Extension
//
//  Created by 刘俊臣 on 2018/5/29.
//

#import <Foundation/Foundation.h>

@interface NSArray (Functional)

/**
 过滤得到所有数组内满足条件的元素

 @param filter 过滤条件
 @return 满足条件的元素列表
 */
- (NSArray * _Nonnull )filter:(BOOL(^)(id element))filter;

/**
 判定数组内是否包含满足条件的元素

 @param condition 条件
 @return 是否包含
 */
- (BOOL)containsObjectWhere:(BOOL(^)(id element))condition;

/**
 转换数据元素

 @param transfer 转换方法
 @return 转换后的元素列表
 */
- (NSArray * _Nonnull)map:(id(^)(id element))transfer;

/**
 第一个满足条件的元素

 @param condition 条件
 @return 第一个元素， 可能不存在为nil
 */
- (_Nullable id)firstObjectWhere:(BOOL(^)(id element))condition;

@end
