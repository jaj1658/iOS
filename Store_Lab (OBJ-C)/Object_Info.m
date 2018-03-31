//
//  Object_Info.m
//  Assignment1
//
//  Created by Jean Jeon on 2/8/18.
//  Copyright © 2018 Jean Jeon. All rights reserved.
//

#import "Object_Info.h"

@implementation Object_Info

//-(int) addNumber: (int) a toNumber: (int) b;

- (void) Print_Object {
    NSLog(@"This method works!");
    //You should create a method "Print_Object" which prints out the Object_Info class in some kind of pretty format using NSLog()(which, conceivably might be part of the Object_Info class).
}

- (BOOL) Add: (NSString*) Name _Item: (NSString*) Desc To: (double) Retail Dic: (double) Wholesale {
    //adds a new item to the dictionary given Name, Description, Retail Cost and Wholesale Cost. It should set the Number sold to 0. The method should return a Boolean value which indicates whether an item has been successfully added or not. (A duplicate Key/Name should cause it to be rejected). Also note that you should use 'lazy instantiation' on the dictionary itself - the first added item should cause the dictionary to be created.
    return true;
};

- (void) Add: (NSString*) key _Stock: (int) x{
    //given a Key/Name and an integer representing the new stock, will add the specified number of units to the Num_on_Hand variable of the Object_Info object.
};

-(void) Sell_Item {
    //You should write a method "Sell_Item" that given the Key/Name prints out the sale using "Print_Object" (above) and decrements the Num_on_Hand by 1. Note that if the Num_on_Hand was 0 to begin with, an error should be printed instead.
};

-(void) Profit_of_Store {
    //You should write a method "Profit_of_Store" which computes the profit for the whole store considering the difference between the Wholesale_Cost and the Retail_Cost multipled by the Num_Sold for each item in the store. It should print out this total profit.
};
@end




