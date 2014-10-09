//
//  DieLabel.h
//  Farkle
//
//  Created by S on 10/8/14.
//  Copyright (c) 2014 Ryan Siska. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DieDelegate // do I need this-> <NSObject>
- (void)dieRollWithValue:(id)sender;
@end

@protocol DieLabelDelegate //<NSObject>
//-(void)removeDieLabelFromDiceArray:(UILabel *)label;

@end

@interface DieLabel : UILabel
- (void) roll;
@property id <DieDelegate> delegate;
// - this was listed in #5, Michael didn't have it-> @property id <DieLabelDelegate> delegate;
@end
