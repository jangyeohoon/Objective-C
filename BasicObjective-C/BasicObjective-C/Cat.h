//
//  Cat.h
//  BasicObjective-C
//
//  Created by p195610 on 4/29/24.
//

#import <Foundation/Foundation.h>
#import "MyPet.h"

NS_ASSUME_NONNULL_BEGIN

@protocol CatDelegate <NSObject>

- (void)doMoreCrying;

@end

@interface Cat : NSObject <MyPet>
{
    NSString *name;
    int age;
}

- (id)initWithName:(NSString *)nameValue;
- (id)initWithAge:(int)ageValue;
- (id)initWithNameAndAge:(NSString *)nameValue age:(int)ageValue;

@end

NS_ASSUME_NONNULL_END
