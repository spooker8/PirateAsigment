//
//  CCCharacter.h
//  PirateAssigment
//
//  Created by Anand Kumar on 8/15/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCWeapon.h"
#import "CCArmor.h"

@interface CCCharacter : NSObject

@property (strong,nonatomic) CCArmor *armor;
@property (strong,nonatomic) CCWeapon *weapon;
@property (nonatomic) int damage;
@property (nonatomic) int health;


@end
