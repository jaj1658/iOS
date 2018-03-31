//
//  getHintViewController.h
//  assignment3
//
//  Created by Jean Jeon on 3/11/18.
//  Copyright © 2018 Jean Jeon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface getHintViewController : UIViewController<UITabBarControllerDelegate>
@property (strong, nonatomic) IBOutlet UILabel *getHintLabel;
@property (nonatomic) int randoVal;
@property (nonatomic) int randoSuit;
@property (nonatomic) int numGuesses;

@property (strong, nonatomic) NSArray *cardVals;
@property (strong, nonatomic) NSArray *cardImages;
@property (strong, nonatomic) IBOutlet UIImageView *hintPicture;

@property (nonatomic) Boolean correctGuess;

@end
