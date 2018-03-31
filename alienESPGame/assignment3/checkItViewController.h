//
//  checkItViewController.h
//  assignment3
//
//  Created by Jean Jeon on 3/11/18.
//  Copyright © 2018 Jean Jeon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface checkItViewController : UIViewController <UITabBarControllerDelegate, AVAudioPlayerDelegate>

@property (strong, nonatomic) NSString *passedMessage;

@property (strong, nonatomic) IBOutlet UILabel *passedMsg;

@property (strong, nonatomic) IBOutlet UILabel *numGuessesLabel;

@property (nonatomic) int numGuesses;
@property (nonatomic) int randoVal;
@property (nonatomic) int randoSuit;
@property (nonatomic) int userVal;
@property (nonatomic) int userSuit;

@property (strong, nonatomic) NSString *lost;
@property (strong, nonatomic) NSString *won;
@property (strong, nonatomic) NSURL *soundURL;
@property (nonatomic) Boolean correctGuess;

@property (strong, nonatomic) NSArray *cardVals;
@property (strong, nonatomic) NSArray *lgImages;
@property (strong, nonatomic) IBOutlet UIImageView *playerCardImg;
@property (strong, nonatomic) IBOutlet UILabel *playerCard;

@end
