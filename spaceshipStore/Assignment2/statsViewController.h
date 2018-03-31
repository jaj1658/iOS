//
//  statsViewController.h
//  Assignment2
//
//  Created by Jean Jeon on 3/2/18.
//  Copyright © 2018 Jean Jeon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface statsViewController : UIViewController

@property (nonatomic) int intCurrentNum;
@property (nonatomic) int intNumAdded;

@property (strong, nonatomic) IBOutlet UILabel *currentNum;
@property (strong, nonatomic) IBOutlet UILabel *numAdded;
@property (strong, nonatomic) NSMutableArray *Items;
@property (strong, nonatomic) NSMutableArray *addedItems;

- (IBAction)backBtn:(id)sender;

@end
