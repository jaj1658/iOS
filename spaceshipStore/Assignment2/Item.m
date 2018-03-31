//
//  Item.m
//  Assignment2
//
//  Created by Jean Jeon on 2/23/18.
//  Copyright © 2018 Jean Jeon. All rights reserved.
//

#import "Item.h"

@implementation Item

- (NSString*) getDesc{
    return Desc;
}

- (void) setDesc:(NSString *)desc{
    Desc = desc;
}

- (NSString*) getProd{
    return Prod;
}

- (void) setProd:(NSString*)prod{
    Prod = prod;
}

- (NSString*) getCost{
    return Cost;
}

- (void) setCost:(NSString*)cost{
    Cost = cost;
}

- (int) getNum_on_Hand{
    return Num_on_Hand;
}

- (void) setNumHand:(int)numHand{
    Num_on_Hand = numHand;
}

- (NSString*) getImg{
    return Img;
}

- (void) setImg:(NSString *)img{
    Img = img;
}

@end
