//
//  Pet.h
//  BasicObjective-C
//
//  Created by p195610 on 4/29/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Pet : NSObject

@property (readonly, copy) NSString *name;

- (void)doCry:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
