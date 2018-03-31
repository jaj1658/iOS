//
//  Card.h
//  assignment3
//
//  Created by Jean Jeon on 3/11/18.
//  Copyright © 2018 Jean Jeon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject{
    int userCardName;
    int userCardSuit;
    int randoCardName;
    int randoCardSuit;
}

//getter method for user's card name
- (int) getUserCardName;
//setter method for user's card name
- (void) setUserCardName: (int) UserCard;

//getter method for user's card suit
- (int) getUserCardSuit;
//setter method for user's card suit
- (void) setUserCardSuit: (int) UserSuit;

//getter method for random card name
- (int) getRandoCardName;
//setter method for random card name
- (void) setRandoCardName: (int) randoCard;

//getter method for random card name
- (int) getRandoCardSuit;
//setter method for random card name
- (void) setRandoCardSuit: (int) randoSuit;

@end
