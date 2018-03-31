//
//  Catalogue.h
//  Assignment2
//
//  Created by Jean Jeon on 2/26/18.
//  Copyright © 2018 Jean Jeon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Catalogue : NSObject

@property(nonatomic, strong) NSString *Product;
@property(nonatomic, strong) NSString *Desc;
@property(nonatomic, strong) NSString *Image;
@property(nonatomic) float Cost;
@property(nonatomic) int numHand;

//{
//    NSString *Product;
//    NSString *Desc;
//    float Cost;
//    int NumHand;
//    NSString *Image;
//};
//
//// getter method
//- (NSString*) getDesc;
//// setter method
//- (void) setDesc: (NSString*) Desc;
//
//// getter method
//- (NSString*) getImg;
//// setter method
//- (void) setImg: (NSString*) Image;
//
//// getter method
//- (float) getCost;
//// setter method
//- (void) setCost: (float) Cost;
//
//// getter method
//- (int) getNum_on_Hand;
//// setter method
//- (void) setNumHand: (int) numHand;

@end
