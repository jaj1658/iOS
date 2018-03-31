//
//  Object_Info.h
//  Assignment1
//
//  Created by Jean Jeon on 2/12/18.
//  Copyright © 2018 Jean Jeon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Object_Info : NSObject

{
    NSString *Desc;
    float Retail;
    float Wholesale;
    int Num_on_Hand;
    int Items_sold;
};

@property (nonatomic, strong) NSMutableDictionary *stock;
@property (nonatomic) Object_Info *Item;

// getter method
- (NSString*) getDesc;
// setter method
- (void) setDesc: (NSString*) desc;

// getter method
- (float) getRetail;
// setter method
- (void) setRetail: (float) retail;

// getter method
- (float) getWholesale;
// setter method
- (void) setWholesale: (float) wholesale;

// getter method
- (int) getNum_on_Hand;
// setter method
- (void) setNumHand: (int) numHand;

// getter method
- (int) getItems_sold;
// setter methof
- (void) setItemsSold: (int) itemsSold;

@end



