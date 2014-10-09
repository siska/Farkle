//
//  ViewController.m
//  Farkle
//
//  Created by S on 10/8/14.
//  Copyright (c) 2014 Ryan Siska. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <DieDelegate, DieLabelDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.die.delegate = self;
    self.dieLabelOne.delegate = self;
    self.dieLabelTwo.delegate = self;
    self.dieLabelThree.delegate = self;
    self.dieLabelFour.delegate = self;
    self.dieLabelFive.delegate = self;
    self.dieLabelSix.delegate = self;

    self.diceArray = [[NSMutableArray alloc] initWithObjects:self.dieLabelOne, self.dieLabelTwo, self.dieLabelThree, self.dieLabelFour, self.dieLabelFive, self.dieLabelSix, nil];
}

- (IBAction)onRollButtonPressed:(UIButton *)sender {
    for (DieLabel *label in self.diceArray) {
        [label roll];
    } //important use of forin loop
}



#pragma mark - DieDelegate Methods

- (void)dieRollWithValue:(DieLabel *)sender
{
    [self.diceArray removeObject:sender];
    [self.dice addObject:sender];
    sender.backgroundColor = [UIColor redColor];
}

- (void)removeDieLabelFromDiceArray:(UILabel *)label
{
//not using this
}

@end
