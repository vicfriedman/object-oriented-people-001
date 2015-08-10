//
//  Person.m
//  ObjectOrientedPeople
//
//  Created by Victoria Friedman on 8/10/15.
//  Copyright (c) 2015 al-tyus.com. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)init{
    self = [super init];
    if (self) {
        // Any custom setup work goes here
        _height = @9;
        _name = @"";
    }
    return self;
}

-(id)initWithName:name{
    self = [super init];
    if (self) {
        // Any custom setup work goes here
        _name = name;
        _height = @9;
    }
    return self;

}


- (NSNumber *)grow{
    if (self.isFemale == true){
        if ([self.age integerValue] < 11)
        {
            self.height = @([self.height floatValue] + [self randomFloatBetweenNumber:0 andNumber:1]);
        }
        else if ([self.age integerValue] >= 11 && [self.age integerValue] <=15)
        {
            self.height = @([self.height floatValue] + [self randomFloatBetweenNumber:.5 andNumber:2]);
        }
    }
    else
    {
        if ([self.age integerValue] < 12)
        {
            self.height = @([self.height floatValue] + [self randomFloatBetweenNumber:0 andNumber:1]);
        }
        else if ([self.age integerValue] >=12 && [self.age integerValue] <= 16)
        {
            self.height = @([self.height floatValue] + [self randomFloatBetweenNumber:.5 andNumber:3.5]);
        }
    }

    return self.height;
}

#define ARC4RANDOM_MAX 0x100000000
- (CGFloat)randomFloatBetweenNumber:(CGFloat)minRange andNumber:(CGFloat)maxRange
{
    return ((float)arc4random() / ARC4RANDOM_MAX)
    * (maxRange - minRange)
    + minRange;
}

- (void)addFriends:(NSArray *)friends{
    for (NSString *friend in friends){
        [self.friends addObject:friend];
    }
//    return nil;
}
- (NSString *)generatePartyList;
{
    NSMutableArray *names = [NSMutableArray new];
    for (Person *friend in self.friends)
    {
        if (friend.name)
        {
            [names addObject:friend.name];
        }
    }
    return [names componentsJoinedByString:@", "];
}

- (BOOL)removeFriend:(Person *)friend{
  
    for (NSUInteger i = 0; i < [self.friends count]; i++){

        if (friend == self.friends[i]){
            [self.friends removeObject:self.friends[i] ];
            return YES;
        }
    }
    return NO;
}

-(NSArray *)removeFriends:(NSArray *)friendsToRemove{
    for (Person *friend in friendsToRemove){
        if ([self.friends containsObject:friend]){
            [self.friends removeObject:friend];
        }
    }
    return friendsToRemove;
}



@end


