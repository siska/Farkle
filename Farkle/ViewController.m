//
//  ViewController.m
//  Farkle
//
//  Created by S on 10/8/14.
//  Copyright (c) 2014 Ryan Siska. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <DieDelegate>

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
}

- (IBAction)onRollButtonPressed:(UIButton *)sender {
    [self.dieLabelOne roll];
    [self.dieLabelTwo roll];
    [self.dieLabelThree roll];
    [self.dieLabelFour roll];
    [self.dieLabelFive roll];
    [self.dieLabelSix roll];

}



#pragma mark - DieDelegate Methods

- (void)dieRollWithValue:(int)value
{
    
}

@end
