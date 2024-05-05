//
//  MyPet.h
//  BasicObjective-C
//
//  Created by 장여훈 on 5/5/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MyPet <NSObject>

- (void)doCrying;

@optional
- (void)saySomething;

@end

NS_ASSUME_NONNULL_END
