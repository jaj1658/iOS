//
//  Item.h
//  Assignment2
//
//  Created by Jean Jeon on 2/23/18.
//  Copyright © 2018 Jean Jeon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject{
    NSString *Prod;
    NSString *Desc;
    NSString *Cost;
    NSString *Img;
    int Num_on_Hand;
}

// getter method
- (NSString*) getDesc;
// setter method
- (void) setDesc: (NSString*) desc;

// getter method
- (NSString*) getProd;
// setter method
- (void) setProd: (NSString*) Prod;

// getter method
- (NSString*) getCost;
// setter method
- (void) setCost: (NSString*) Cost;

// getter method
- (int) getNum_on_Hand;
// setter method
- (void) setNumHand: (int) numHand;

- (NSString*) getImg;
- (void) setImg: (NSString*) img;


@end
