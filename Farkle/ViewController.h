//
//  ViewController.h
//  Farkle
//
//  Created by S on 10/8/14.
//  Copyright (c) 2014 Ryan Siska. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DieLabel.h"

@interface ViewController : UIViewController

@property DieLabel *die;
@property IBOutlet DieLabel *dieLabelOne;
@property IBOutlet DieLabel *dieLabelTwo;
@property IBOutlet DieLabel *dieLabelThree;
@property IBOutlet DieLabel *dieLabelFour;
@property IBOutlet DieLabel *dieLabelFive;
@property IBOutlet DieLabel *dieLabelSix;

@end

