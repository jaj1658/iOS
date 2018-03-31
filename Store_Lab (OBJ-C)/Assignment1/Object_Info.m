//
//  Object_Info.m
//  Assignment1
//
//  Created by Jean Jeon on 2/12/18.
//  Copyright © 2018 Jean Jeon. All rights reserved.
//

#import "Object_Info.h"

@implementation Object_Info

- (NSString*) getDesc{
    return Desc;
}

- (void) setDesc:(NSString *)desc{
    Desc = desc;
}

- (float) getRetail{
    return Retail;
}

- (void) setRetail:(float)retail{
    Retail = retail;
}

- (float) getWholesale{
    return Wholesale;
}

- (void) setWholesale:(float)wholesale{
    Wholesale = wholesale;
}

- (int) getNum_on_Hand{
    return Num_on_Hand;
}

- (void) setNumHand:(int)numHand{
    Num_on_Hand = numHand;
}

- (int) getItems_sold{
    return Items_sold;
}

- (void) setItemsSold:(int)itemsSold{
    Items_sold = itemsSold;
}

@end
