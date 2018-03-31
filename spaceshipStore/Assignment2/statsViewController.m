//
//  statsViewController.m
//  Assignment2
//
//  Created by Jean Jeon on 3/2/18.
//  Copyright © 2018 Jean Jeon. All rights reserved.
//

#import "statsViewController.h"
#import "ViewController.h"
#import "Item.h"

@interface statsViewController ()

@end

@implementation statsViewController

@synthesize currentNum, intCurrentNum, Items, intNumAdded, numAdded;

- (void)viewDidLoad {
    
    [super viewDidLoad];
    NSString *itemsAdded = [NSString stringWithFormat:@"%i",intNumAdded];
    [numAdded setText:itemsAdded];
        NSString *totalItems = [NSString stringWithFormat:@"%i",intCurrentNum];
    [currentNum setText:totalItems];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ViewController *vc;
    vc = [segue destinationViewController];
    vc.Items = Items;
    vc.addedItems = intNumAdded;
    
    Item *ship = [[Item alloc]init];
    ship = [Items objectAtIndex:0];
    vc.strProd = [ship getProd];
    vc.strDesc = [ship getDesc];
    vc.strCost = [ship getCost];
    vc.strImg = [ship getImg];
    vc.pickerNum = [ship getNum_on_Hand];
}

- (IBAction)backBtn:(id)sender {
}
@end
