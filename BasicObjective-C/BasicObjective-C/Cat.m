//
//  Cat.m
//  BasicObjective-C
//
//  Created by p195610 on 4/29/24.
//

#import "Cat.h"

@implementation Cat

- (id)init {
    self = [super init];
    if (self) {
        age = 0;
        name = @"이름없음";
    }
    return self;
}

- (id)initWithAge:(int)ageValue {
    self = [super init];
    if (self) {
        age = ageValue;
        name = @"이름없음";
    }
    return self;
}

- (id)initWithName:(NSString *)nameValue {
    self = [super init];
    if (self) {
        age = 0;
        name = @"이름없음";
    }
    return self;
}

- (id)initWithNameAndAge:(NSString *)nameValue age:(int)ageValue {
    self = [super init];
    if (self) {
        age = ageValue;
        name = nameValue;
    }
    return self;
}

- (void)doCrying {
    NSLog(@"%s, line: %d, %@", __func__, __LINE__, @"");
}

@end
