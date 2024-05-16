//
//  Dummy.h
//  BasicObjective-C
//
//  Created by 장여훈 on 5/15/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dummy : NSObject <NSCopying>
{
    NSString *name;
    int age;
    
}
- (id)initWithNameAndAge:(NSString *)nameValue age:(int)ageValue;

@end

NS_ASSUME_NONNULL_END
