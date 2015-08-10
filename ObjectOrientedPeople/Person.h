//
//  Person.h
//  ObjectOrientedPeople
//
//  Created by Victoria Friedman on 8/10/15.
//  Copyright (c) 2015 al-tyus.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (strong, nonatomic) NSNumber *height;

@property (nonatomic) NSNumber *age;

@property (nonatomic) NSString *name;

//(BOOL) isFemale

@property (nonatomic) BOOL isFemale;


//(NSMutableArray *)friends

@property (nonatomic) NSMutableArray *friends;

- (NSNumber *)grow;

- (void)addFriends:(NSArray *)friends;
- (NSString *)generatePartyList;
- (BOOL)removeFriend: (Person *)friend;


- (id)initWithName:(NSString *)name;

-(NSArray *)removeFriends:(NSArray *)friendsToRemove;

@end
