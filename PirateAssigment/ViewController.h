//
//  ViewController.h
//  PirateAssigment
//
//  Created by Anand Kumar on 7/29/15.
//  Copyright (c) 2015 anand. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CCCharacter.h"
#import "CCBos.h"

@interface ViewController : UIViewController

//iVars

@property (nonatomic) CGPoint currentPoint;
@property (strong, nonatomic) NSArray *tiles;
@property (strong,nonatomic) CCCharacter *character;
@property (strong, nonatomic)CCBos *boss;

//IBOutlets

@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (weak, nonatomic) IBOutlet UILabel *healthLabel;
@property (weak, nonatomic) IBOutlet UILabel *damageLabel;
@property (weak, nonatomic) IBOutlet UILabel *weaponLabel;
@property (weak, nonatomic) IBOutlet UILabel *armorLabel;
@property (weak, nonatomic) IBOutlet UILabel *storyLabel;

@property (weak, nonatomic) IBOutlet UIButton *actionButton;
@property (weak, nonatomic) IBOutlet UIButton *northButton;
@property (weak, nonatomic) IBOutlet UIButton *westButton;
@property (weak, nonatomic) IBOutlet UIButton *southButton;
@property (weak, nonatomic) IBOutlet UIButton *eastButton;

@property (weak, nonatomic) IBOutlet UIButton *resetGame;



//IBActions

- (IBAction)actionButtonPressed:(id)sender;


- (IBAction)northButtonPressed:(id)sender;
- (IBAction)westButtonPressed:(id)sender;
- (IBAction)southButtonPressed:(id)sender;
- (IBAction)eastButtonPressed:(id)sender;

- (IBAction)resetButtonPress:(id)sender;






@end

