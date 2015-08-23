//
//  ViewController.m
//  PirateAssigment
//
//  Created by Anand Kumar on 7/29/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import "ViewController.h"
#import "CCFactory.h"
#import "CCTiles.h"
#import "CCBos.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    CCFactory *factory = [[CCFactory alloc] init];
    self.tiles = [factory tiles];
    self.character = [factory character];
     self.boss = [factory boss];
    
    
    self.currentPoint = CGPointMake(0, 0);
   
    
    
    [self updateTile];
    [self updateButtons];
    [self updateCharacterStatsForArmor:nil withWeapons:nil withHealthEffect:0];
    
    
}
 -(void)updateTile
    {
        
     CCTiles *tileModel =  [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
        self.storyLabel.text = tileModel.story;
        
        self.backgroundImageView.image = tileModel.backgroundImage;
        
        self.healthLabel.text = [NSString stringWithFormat:@"%i", self.character.health];
        self.damageLabel.text = [NSString stringWithFormat:@"%i", self.character.damage];
        self.armorLabel.text = self.character.armor.name;
        self.weaponLabel.text = self.character.weapon.name;
      
        [self.actionButton setTitle:tileModel.actionButtonName forState:UIControlStateNormal];
        
        
        
        
    }

-(void)updateButtons
{
    
    self.westButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x - 1, self.currentPoint.y)];
    
    self.eastButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x + 1, self.currentPoint.y)];
    
    self.northButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y + 1)];
    
    self.southButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y - 1)];
    
    
}


-(BOOL)tileExistsAtPoint:(CGPoint)point
{
    if (point.y >=0 && point.x >=0 && point.x < [self.tiles count] && point.y < [[self.tiles objectAtIndex:point.x] count])
    
    
    {
        return NO;
    }
    
    else {
        
        return YES;
    }
    
    
}


-(void)updateCharacterStatsForArmor:(CCArmor *)armor withWeapons:(CCWeapon*)weapon withHealthEffect:(int)healthEffect
{
    
    if (armor !=nil)
    {
        self.character.health = self.character.health - self.character.armor.health + armor.health;
        
        self.character.armor = armor;
    
    }
    else if (weapon !=nil)
    {
        self.character.damage = self.character.damage - self.character.weapon.damage + weapon.damage;
        
        self.character.weapon = weapon;
        
    }
    else if ( healthEffect !=0)
    {
        
        self.character.health = self.character.health+ healthEffect;
    }
    
    else {
        
        self.character.health = self.character.health + self.character.armor.health;
        self.character.damage = self.character.damage + self.character.weapon.damage;
        
    }
    
        
    }
    
    



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionButtonPressed:(id)sender

{
    CCTiles *tile = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    
    if (tile.healthEffect == -15)
    {
        
        self.boss.health = self.boss.health - self.character.damage;
        
        
    }
    
    [self updateCharacterStatsForArmor:tile.armor withWeapons:tile.weapon withHealthEffect:tile.healthEffect];
    
    if(self.character.health <=0)
        
    {
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Death" message:@"you have died please restart game" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
        
        [alertView show];
    }
    
     else if (self.boss.health <=0)
     {
         
         UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Victory" message:@"you have defeated the boss" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:@"Cancel", nil];
         
         [alertView show];
         
     }
    
    [self updateTile];
    
    
}

#pragma mark - IBActions

- (IBAction)northButtonPressed:(id)sender
{
    
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y +1);
    
    [self updateButtons];
    [self updateTile]; //based on the current
    
}

- (IBAction)westButtonPressed:(id)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x - 1, self.currentPoint.y);
    [self updateButtons];
    [self updateTile];
    
}

- (IBAction)southButtonPressed:(id)sender
{
   
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y - 1);
    [self updateButtons];
    [self updateTile];
    
    
    
}

- (IBAction)eastButtonPressed:(id)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x + 1, self.currentPoint.y);
    [self updateButtons];
    [self updateTile];
    
    
    
}


- (IBAction)resetButtonPress:(id)sender;
{
    
    self.character = nil;
    self.boss = nil;
    [self viewDidLoad];
    
    
    
}


@end
