//
//  customViewController.m
//  Assignment2
//
//  Created by Jean Jeon on 2/23/18.
//  Copyright © 2018 Jean Jeon. All rights reserved.
//

#import "customViewController.h"
#import "ViewController.h"
#import "Item.h"

@interface customViewController ()

@end

@implementation customViewController
@synthesize textCost, textDesc, textProd, textNum, Items, strtextCost, strtextDesc, strtextProd, numHand, numAdded;

- (IBAction)enterBtn:(id)sender {
}

- (void)viewDidLoad {
    numAdded +=1;
    
    [textProd setText:strtextProd];
    [textDesc setText:strtextDesc];
    [textCost setText:strtextCost];
    [textNum setText:[NSString stringWithFormat: @"%i",numHand]];
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ViewController *vc;
    vc = [segue destinationViewController];
    
    Item *ship = [[Item alloc]init];
    [ship setProd:[textProd text]];
    [ship setDesc:[textDesc text]];
    [ship setCost:[textCost text]];
    
    NSString *userNum = [textNum text];
    int userNumber = [userNum intValue];
    [ship setNumHand:userNumber];
    [ship setImg:@"spacheship.png"];
    
    [Items addObject:ship];

    vc.Items = Items;
    
    vc.strProd = [ship getProd];
    vc.strDesc = [ship getDesc];
    vc.strCost = [ship getCost];
    vc.strImg = [ship getImg];
    vc.pickerNum = [ship getNum_on_Hand];
    vc.addedItems = numAdded;
}


@end
