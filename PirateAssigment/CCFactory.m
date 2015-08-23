//
//  CCFactory.m
//  PirateAssigment
//
//  Created by Anand Kumar on 7/30/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "CCFactory.h"
#import "CCTiles.h"
#import "CCBos.h"

@implementation CCFactory


-(NSArray *)tiles
{
    
    CCTiles *tile1 = [[CCTiles alloc] init];
    tile1.story = @"Captain, we need a fearless leader as yourself to undertake the vogare. You must stop the evil pirate Boss. Would you like a blunedted sword to get start?";
    tile1.actionButtonName=@"Take the blunted Sword!";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart"];
    
    CCWeapon *bluntedSword = [[CCWeapon alloc]init];
    bluntedSword.name= @"Blunted sword";
    bluntedSword.damage= 12;
    tile1.weapon = bluntedSword;
    
    
    CCTiles *tile2 = [[CCTiles alloc] init];
    tile2.story = @"You have come across an armory. Would you like to upgrade your armor to steel armor?";
    tile2.actionButtonName = @"Take the armor";
    CCArmor *steelArmor = [[CCArmor alloc] init];
    steelArmor.name = @"Steel Armor";
    steelArmor.health = 8;
    tile2.armor = steelArmor;
    
    
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlackSmith"];
    
    CCTiles *tile3 = [[CCTiles alloc] init];
    tile3.story = @"A mysterious dock appears on the horizon. Should we stop and ask for directions?";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock"];
    tile3.actionButtonName = @"Stop at the dock";
    tile3.healthEffect = 17;
    
    
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    
    
    
    CCTiles *tile4 = [[CCTiles alloc] init];
    tile4.story = @"You have found a parrot that can be used in your armor slot! Parrots are a great defrender and are fiercely loyal to their captain.";
    
    tile4.actionButtonName = @"Adopt Parrot";
    
    CCArmor *parrotName = [[CCArmor alloc] init];
    parrotName.health = 20;
    parrotName.name = @"Parrot Name";
    
    
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot"];
    
    CCTiles *tile5 = [[CCTiles alloc] init];
    tile5.story = @"You have stumbled upon a cache of pirate weapons. Would you like to upgrade to a pistol?";
    
    tile5.actionButtonName = @"Take Pistol";
    CCWeapon *pistolWeapon = [[CCWeapon alloc] init];
    pistolWeapon.name = @"Pistol";
    pistolWeapon.damage = 17;
    
    
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapon"];
    
    
    CCTiles *tile6 = [[CCTiles alloc] init];
    tile6.story = @"6 You have been captured by pirate and are ordered to walk the plank";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank"];
    
     tile6.actionButtonName = @"Show no fear!";
    tile6.healthEffect = -22;
    
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    
    
    
    CCTiles *tile7 = [[CCTiles alloc] init];
    tile7.story = @"7 You sight a pirate battle off the coast";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateBattle"];
    tile7.actionButtonName = @"Fight those scums!";
    tile7.healthEffect = -15;
    
    
    
    CCTiles *tile8 = [[CCTiles alloc] init];
    tile8.story = @"The legend of the deep, the mighty kraken appears";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctupusAttack"];
    tile8.actionButtonName=@"Abondon ship!";
    tile8.healthEffect = -46;
    
    
    
    
    CCTiles *tile9 = [[CCTiles alloc] init];
    tile9.story = @"You stumble upon a hidden cave of pirate treasurer";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasurer"];
    tile9.actionButtonName= @"Take the treasurer";
    tile9.healthEffect = 20;
    
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    

    
    
    CCTiles *tile10 = [[CCTiles alloc] init];
    tile10.story = @"A group of pirates attemps to board your ship";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack"];
    tile10.actionButtonName=@"Repel the invaders";
    tile10.healthEffect = 15;
    
    
    CCTiles *tile11 = [[CCTiles alloc] init];
    tile11.story = @"In the deep of the sea many things live and many things can be found. Will the fortune bring help or ruin?";

    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer"];
    tile11.actionButtonName= @"Swim deeper";
    tile11.healthEffect = -7;
    
    
    CCTiles *tile12 = [[CCTiles alloc] init];
    tile12.story = @"You final faceoff with the fearsome pirate boss";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss"];
    tile12.actionButtonName = @"Fight!";
    tile12.healthEffect = -15;
    
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    

    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn,thirdColumn,fourthColumn, nil];
    
    
    return tiles;
    
   
    
}

-(CCCharacter*)character
{
    
    CCCharacter *character = [[CCCharacter alloc] init];
    character.health = 100;
    
    CCArmor *armor = [[CCArmor alloc] init];
    armor.name = @"Cloak";
    armor.health = 5;
    character.armor =  armor;
    
    CCWeapon *weapon = [[CCWeapon alloc]init];
    weapon.name = @"Fists";
    weapon.damage = 10;
    character.weapon = weapon;
    
    
    
    
    return character;
    
    
}


-(CCBos*)boss

{
    
    CCBos *boss = [[CCBos alloc] init];
    
    boss.health = 65;
    return boss;
    
    
}



@end
