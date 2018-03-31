//
//  main.m
//  Assignment1
//
//  Created by Jean Jeon on 2/8/18.
//  Copyright © 2018 Jean Jeon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Object_Info.h"

NSMutableDictionary *stock;

void Print_Object(Object_Info *object) {
    NSLog(@"DESCRIPTION: %@ RETAIL PRICE: %.02f WHOLESALE PRICE: %.02f NUMBER SOLD: %i NUMBER ON HAND: %i",[object getDesc], [object getRetail],[object getWholesale],[object getItems_sold], [object getNum_on_Hand]);
    
};

BOOL Add_Item(NSString *Name, NSString *Desc, float Retail, float Wholesale) {
    
    Object_Info *Item_to_Add = [[Object_Info alloc] init];
    
    [Item_to_Add setDesc:Desc];
    
    [Item_to_Add setRetail:Retail];
    
    [Item_to_Add setWholesale:Wholesale];
    
    [Item_to_Add setItemsSold:0];
    
    [Item_to_Add setNumHand:0];
    
    if(!stock){
        stock = [NSMutableDictionary dictionary];
        [stock setObject:Item_to_Add forKey:Name];
    }
    else{
        if([stock objectForKey:Name] != nil){
            NSLog(@"This item is already in stock.");
             return false;
             }
        else{
        [stock setObject:Item_to_Add forKey:Name];
    }
    }
    return true;
};
    

void Add_Stock (NSString *Key, int Stock) {
    
    if([stock objectForKey:Key] != nil){
        Object_Info *updated = [stock objectForKey:Key];
        [updated setNumHand:Stock];
        [stock removeObjectForKey:Key];
        [stock setObject:updated forKey:Key];
    }
};

void Sell_Item(NSString *Key){
    
    if([stock objectForKey:Key] != nil){
        Object_Info *updated = [stock objectForKey:Key];
        int currentHand = [updated getNum_on_Hand];
        int currentSold = [updated getItems_sold];
        if(currentHand == 0){
            NSLog(@"Error! We cannot sell this item because it is out of stock.");
        }
        else{
            int newHand = currentHand-1;
            int newSold = currentSold+1;
            [updated setNumHand:newHand];
            [updated setItemsSold:newSold];
            [stock removeObjectForKey:Key];
            [stock setObject:updated forKey:Key];
            NSLog(@"The %@ has been updated accordingly:",Key);
            Print_Object(updated);
        }
    }
};

void Profit_of_Store(){
    
    float sumTotal = 0;
    
    for(NSString *item in [stock allKeys]){
        Object_Info *item2 = [stock objectForKey:item];
        
        float itemTotal = ([item2 getRetail]-[item2 getWholesale])*[item2 getItems_sold];
        sumTotal += itemTotal;
    }
    NSLog(@"TOTAL PROFIT OF STORE: %.02f",sumTotal); 
};

void Delete_Item(NSString *Key){
    if([stock objectForKey:Key] != nil){
        [stock removeObjectForKey:Key];
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
    //      Add some entries by hard-coding some calls to your "Add_Item" method
        
        Add_Item(@"iPhone 8", @"Apple's iPhone 8", 769.00, 450.00);
        Add_Item(@"Galaxy Note 7", @"Samsung's Exploding Phone", 850.00, 550.00);
        Add_Item(@"40-Inch TV", @"Sony's LED TV", 298.00, 250.00);
        Add_Item(@"Kindle Reader", @"Amazon's E-Reader", 79.99, 75.00);
        
    //        Add some stock to a few items by calling "Add_Stock"
        
        Add_Stock(@"iPhone 8", 3);
        Add_Stock(@"Galaxy Note 7", 4);
        Add_Stock(@"Kindle Reader", 2);
        
    //        Print out the dictionary by enumerating it. (Note that you will have to print the key/name for each record directly, but that the value portion can be printed by "Print_Object").
        
        NSLog(@"FIRST TIME: ");
        
        for(NSString *item in [stock allKeys]){
            NSLog(@"NAME: %@", item);
            Print_Object([stock objectForKey:item]);
        }
        
    //        Delete a few entries. (You might want to write a method for this, too!)
        Delete_Item(@"40-Inch TV");
        Delete_Item(@"Galaxy Note 7");
        
    //        Print out the dictionary again.
        
        NSLog(@"SECOND TIME");
        
        for(NSString *item in [stock allKeys]){
            NSLog(@"NAME: %@", item);
            Print_Object([stock objectForKey:item]);
        }
        
    //        Hard code a few calls to "Sell_Item" for several Key/Names

        Sell_Item(@"iPhone 8");
        Sell_Item(@"Galaxy Note 7");
        Sell_Item(@"Kindle Reader");
        
    //        Print out the dictionary yet again.
        
        NSLog(@"THIRD TIME");
        
        for(NSString *item in [stock allKeys]){
            NSLog(@"NAME: %@", item);
            Print_Object([stock objectForKey:item]);
        }
        
        Profit_of_Store();
        
    return 0;
    }
}
