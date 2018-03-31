//
//  enterViewController.m
//  Assignment2
//
//  Created by Jean Jeon on 2/23/18.
//  Copyright © 2018 Jean Jeon. All rights reserved.
//

#import "enterViewController.h"
#import "Item.h"
#import "ViewController.h"

@interface enterViewController (){
    NSMutableArray *Items;
    int itemIndex;
    int addedItems;
}

@end

@implementation enterViewController

- (void)viewDidLoad {
    
    addedItems = 0;
    Items = [[NSMutableArray alloc]init];
    itemIndex = 0;
    
    Item *ship = [[Item alloc]init];
    [ship setProd:@"Tardis"];
    [ship setDesc:@"How the Doctor travels through time and space"];
    [ship setCost:@"120M"];
    [ship setImg:@"tardis.png"];
    [ship setNumHand:3];
    [Items addObject:ship];
    
    ship = [[Item alloc]init];
    [ship setProd:@"USS Enterprise"];
    [ship setDesc:@"Main ship of Starfleet"];
    [ship setCost:@"96M"];
    [ship setImg:@"USSE.png"];
    [ship setNumHand:4];
    [Items addObject:ship];
    
    ship = [[Item alloc]init];
    [ship setProd:@"Millennium Falcon"];
    [ship setDesc:@"Freight ship used by Han Solo and Chewbacca"];
    [ship setCost:@"84M"];
    [ship setImg:@"milFalc.png"];
    [ship setNumHand:2];
    [Items addObject:ship];
    
    ship = [[Item alloc]init];
    [ship setProd:@"Serenity"];
    [ship setDesc:@"Firefly-class spaceship home to crew of Serenity"];
    [ship setCost:@"73M"];
    [ship setImg:@"serenity.png"];
    [ship setNumHand:7];
    [Items addObject:ship];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    ViewController *vc;
    vc = [segue destinationViewController];
    
    Item *spaceShip = [Items objectAtIndex:0];
    vc.strProd = [spaceShip getProd];
    vc.strDesc = [spaceShip getDesc];
    vc.strCost = [spaceShip getCost];
    vc.strImg = [spaceShip getImg];
    vc.pickerNum = [spaceShip getNum_on_Hand];
    vc.Items = Items;
    vc.itemIndex = itemIndex;
    vc.addedItems = addedItems;
}

- (IBAction)enterBtn:(id)sender {
}
@end
