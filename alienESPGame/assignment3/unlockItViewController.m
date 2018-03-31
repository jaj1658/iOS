//
//  unlockItViewController.m
//  assignment3
//
//  Created by Jean Jeon on 3/11/18.
//  Copyright © 2018 Jean Jeon. All rights reserved.
//

#import "unlockItViewController.h"
#import "checkItViewController.h"
#import "getHintViewController.h"

@interface unlockItViewController ()

@end

@implementation unlockItViewController
@synthesize pickerImages, cardVals, pickerView, userVal, userSuit, randoSuit, randoVal, Message, numGuesses, lgImages, correctGuess;

-(void)viewDidLoad{
        [super viewDidLoad];
        
        pickerImages = @[[UIImage imageNamed:@"club.png"],
                         [UIImage imageNamed:@"diamond.png"],
                         [UIImage imageNamed:@"heart.png"],
                         [UIImage imageNamed:@"spade.png"]];
        
        lgImages = @[[UIImage imageNamed:@"clubLg.png"],
                     [UIImage imageNamed:@"diamondLg.png"],
                     [UIImage imageNamed:@"heartLg.png"],
                     [UIImage imageNamed:@"spadeLg.png"]];
        
        cardVals = @[@"Ace of",@"Two of",@"Three of",@"Four of",@"Five of",@"Six of",@"Seven of",@"Eight of",@"Nine of",@"Jack of",@"King of",@"Queen of"];
        
        randoVal = arc4random_uniform((uint)[cardVals count]);
        randoSuit = arc4random_uniform((uint)[pickerImages count]);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
        self.pickerView.dataSource = self;
        self.pickerView.delegate = self;
        pickerView.showsSelectionIndicator = YES;
        [self.view addSubview:pickerView];
    
    self.tabBarController.delegate = self;
    }

-(BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController{
    
    if ([viewController isKindOfClass:[checkItViewController class]]){
        checkItViewController *civc = (checkItViewController *) viewController;
        
        numGuesses +=1;

        civc.randoSuit = randoSuit;
        civc.randoVal = randoVal;
        
        civc.userVal = userVal;
        civc.userSuit = userSuit;
        
        civc.cardVals = cardVals;
        civc.lgImages = lgImages;
        
        if((randoVal == userVal) && (randoSuit == userSuit)){
            Message = @"You guessed correctly!";
            civc.lost = [NSString stringWithFormat:@"%@/won.mp3",[[NSBundle mainBundle]resourcePath]];
            civc.soundURL = [NSURL fileURLWithPath:civc.lost];
            civc.numGuesses = numGuesses;
            correctGuess = YES;
        }
        else{
            Message = @"You guessed incorrectly!";
            civc.won = [NSString stringWithFormat:@"%@/lost.mp3",[[NSBundle mainBundle]resourcePath]];
            civc.soundURL = [NSURL fileURLWithPath:civc.won];
            civc.numGuesses = numGuesses;
        }
        civc.passedMessage = Message;
        civc.correctGuess = correctGuess;
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

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component {

    if (component == 0){
        return [cardVals count];
    }
    else{
        return [pickerImages count];
    }
}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
    
    UILabel *cardName;
    
    if(component == 1){
        UIImage *image = [pickerImages objectAtIndex:row];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        return imageView;
    }
    else{
        cardName = [[UILabel alloc]init];
        cardName.text = [cardVals objectAtIndex:row];
        return cardName;
    }
}

- (CGFloat)pickerView:(UIPickerView *)pickerView
rowHeightForComponent:(NSInteger)component {
    return 50;
}

- (CGFloat)pickerView:(UIPickerView *)pickerView
    widthForComponent:(NSInteger)component{
    return 80;
}

- (void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    if(component == 0){
        userVal = [pickerView selectedRowInComponent:0];
        [pickerView reloadAllComponents];
    }
    
    else{
        userSuit = [pickerView selectedRowInComponent:1];
        [pickerView reloadAllComponents];
    }
}
@end
