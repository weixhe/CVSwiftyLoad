//
//  CVSwiftyLoad.h
//  CVSwiftyLoad
//
//  Created by caven on 2018/11/27.
//  Copyright © 2018 com.caven. All rights reserved.
//

#import <Foundation/Foundation.h>



/// 本类参考：https://github.com/PB-Tech/SwiftyLoad


@protocol SelfAware <NSObject>
@optional
+ (void)swiftyLoad;
+ (void)swiftyInitialize;
@end

#define SWIFTY_LOAD_INITIALIZE(className) \
@interface className(swizzle_swifty_hook)\
@end\
\
@implementation className(swizzle_swifty_hook)\
+ (void)load {if ([[self class] respondsToSelector:@selector(swiftyLoad)]) {[[self class] swiftyLoad];}}\
+ (void)initialize {if ([[self class] respondsToSelector:@selector(swiftyInitialize)]) {[[self class] swiftyInitialize];}}\
@end
