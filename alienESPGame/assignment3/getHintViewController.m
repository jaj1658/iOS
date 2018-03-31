//
//  getHintViewController.m
//  assignment3
//
//  Created by Jean Jeon on 3/11/18.
//  Copyright © 2018 Jean Jeon. All rights reserved.
//

#import "getHintViewController.h"
#import "checkItViewController.h"
#import "unlockItViewController.h"

@interface getHintViewController ()

@end

@implementation getHintViewController

@synthesize getHintLabel, randoSuit, randoVal, cardVals, cardImages, numGuesses, hintPicture, correctGuess;

- (IBAction)showCardBtn:(id)sender {
    if ([getHintLabel isHidden] && [hintPicture isHidden]) {
        [getHintLabel setHidden:NO];
        [hintPicture setHidden:NO];
    }
    [sender setHidden:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBarController.delegate = self;
    NSString *passedCard = [cardVals objectAtIndex:randoVal];
    getHintLabel.text = passedCard;
    hintPicture.image = [cardImages objectAtIndex:randoSuit];
    [getHintLabel setHidden:YES];
    [hintPicture setHidden:YES];
}

-(BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController{
    if ([viewController isKindOfClass:[checkItViewController class]]){
        checkItViewController *civc = (checkItViewController *) viewController;
        civc.numGuesses = numGuesses;
        civc.randoSuit = randoSuit;
        civc.randoVal = randoVal;
        civc.cardVals = cardVals;
        civc.lgImages = cardImages;
    }
    
    else if ([viewController isKindOfClass:[unlockItViewController class]]){
        unlockItViewController *uivc = (unlockItViewController *) viewController;
        uivc.numGuesses = numGuesses;
    }
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
