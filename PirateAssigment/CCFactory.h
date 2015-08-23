//
//  CCFactory.h
//  PirateAssigment
//
//  Created by Anand Kumar on 7/30/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCCharacter.h"
#import "CCBos.h"


@interface CCFactory : NSObject

-(NSArray *)tiles;

-(CCCharacter*)character;

-(CCBos*)boss;   //boss file

@end
