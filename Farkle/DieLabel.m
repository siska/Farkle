//
//  DieLabel.m
//  Farkle
//
//  Created by S on 10/8/14.
//  Copyright (c) 2014 Ryan Siska. All rights reserved.
//

#import "DieLabel.h"

@implementation DieLabel

- (void) roll
{
    int randomNumber = arc4random_uniform(6)+1;
    [self.delegate dieRollWithValue:randomNumber];
    self.text = @(randomNumber).description;
}

-(IBAction)onTapped:(UITapGestureRecognizer *)sender
{
    [self roll];
}



@end
