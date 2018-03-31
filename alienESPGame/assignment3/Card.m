//
//  Card.m
//  assignment3
//
//  Created by Jean Jeon on 3/11/18.
//  Copyright © 2018 Jean Jeon. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int) getUserCardName {
    return userCardName;
}

- (void) setUserCardName:(int)UserCard {
    userCardName = UserCard;
}

- (int) getUserCardSuit {
    return userCardSuit;
}

- (void) setUserCardSuit:(int)UserSuit {
    userCardSuit = UserSuit;
}

- (int) getRandoCardName {
    return randoCardName;
}

- (void) setRandoCardName:(int)randoCard {
    randoCardName = randoCard;
}

- (int) getRandoCardSuit {
    return randoCardSuit;
}

- (void) setRandoCardSuit:(int)randoSuit {
    randoCardSuit = randoSuit;
}

@end
