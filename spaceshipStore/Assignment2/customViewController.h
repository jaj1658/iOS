//
//  customViewController.h
//  Assignment2
//
//  Created by Jean Jeon on 2/23/18.
//  Copyright © 2018 Jean Jeon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface customViewController : UIViewController

@property (nonatomic) int numHand;
@property (strong, nonatomic) NSString *strtextProd;
@property (strong, nonatomic) NSString *strtextDesc;
@property (strong, nonatomic) NSString *strtextCost;
@property (nonatomic) int numAdded;

@property (strong, nonatomic) IBOutlet UITextField *textProd;
@property (strong, nonatomic) IBOutlet UITextField *textDesc;
@property (strong, nonatomic) IBOutlet UITextField *textCost;
@property (strong, nonatomic) IBOutlet UITextField *textNum;
@property (strong, nonatomic) NSMutableArray *Items;

@end
