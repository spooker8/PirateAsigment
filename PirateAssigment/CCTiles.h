//
//  CCTiles.h
//  PirateAssigment
//
//  Created by Anand Kumar on 7/30/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CCWeapon.h"
#import "CCArmor.h"
#import "CCCharacter.h"
@interface CCTiles : NSObject

@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *backgroundImage;
@property (strong, nonatomic) NSString *actionButtonName;
@property (strong, nonatomic) CCWeapon *weapon;
@property (strong,nonatomic) CCArmor *armor;
@property int healthEffect;








@end
