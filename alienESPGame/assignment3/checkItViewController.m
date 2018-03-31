//
//  checkItViewController.m
//  assignment3
//
//  Created by Jean Jeon on 3/11/18.
//  Copyright © 2018 Jean Jeon. All rights reserved.
//

#import "checkItViewController.h"
#import "unlockItViewController.h"
#import "getHintViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface checkItViewController (){
    AVAudioPlayer *audioPlayer;
}

@end

@implementation checkItViewController

@synthesize passedMessage, passedMsg, numGuesses, numGuessesLabel, randoSuit, randoVal, cardVals, playerCardImg, lost, won, soundURL, playerCard, userVal, userSuit, lgImages, correctGuess;

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    passedMsg.text = passedMessage;
    numGuessesLabel.text = [NSString stringWithFormat:@"%d",numGuesses];
    playerCard.text = [cardVals objectAtIndex:userVal];
    
    playerCardImg.image = [lgImages objectAtIndex:userSuit];
    
    self.tabBarController.delegate = self;
    
    audioPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:soundURL error:nil];
    audioPlayer.delegate = self;
    [audioPlayer play];

}

- (void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag{
    if (correctGuess){
        exit(0);
    }
    
}

-(BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController{
    if ([viewController isKindOfClass:[unlockItViewController class]]){
        unlockItViewController *uivc = (unlockItViewController *) viewController;
        uivc.numGuesses = numGuesses;
        uivc.correctGuess = correctGuess;
    }
    
    else if ([viewController isKindOfClass:[getHintViewController class]]){
        getHintViewController *ghvc = (getHintViewController *) viewController;
        ghvc.randoSuit = randoSuit;
        ghvc.randoVal = randoVal;
        ghvc.cardVals = cardVals;
        ghvc.cardImages = lgImages;
        ghvc.numGuesses = numGuesses;
        ghvc.correctGuess = correctGuess;
    }
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

