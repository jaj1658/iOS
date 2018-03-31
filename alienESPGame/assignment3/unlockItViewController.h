//
//  unlockItViewController.h
//  assignment3
//
//  Created by Jean Jeon on 3/11/18.
//  Copyright © 2018 Jean Jeon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface unlockItViewController : UIViewController <UITabBarControllerDelegate,UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) NSString *Message;
@property (strong, nonatomic) IBOutlet UIPickerView *pickerView;
@property (strong, nonatomic) NSArray *pickerImages;
@property (strong, nonatomic) NSArray *cardVals;
@property (strong, nonatomic) NSArray *lgImages;

@property (nonatomic) int userVal;;
@property (nonatomic) int userSuit;
@property (nonatomic) int randoSuit;
@property (nonatomic) int randoVal;
@property (nonatomic) int numGuesses;

@property (nonatomic) Boolean correctGuess;


@end
