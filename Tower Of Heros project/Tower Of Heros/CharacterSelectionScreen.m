//
//  CharacterSelectionScreen.m
//  Tower Of Heros
//
//  Created by MingYang Lu on 1/15/13.
//  Copyright (c) 2013 Vanderbilt University. All rights reserved.
//

#import "CharacterSelectionScreen.h"

@implementation CharacterSelectionScreenSceen
- (id) init {
    self = [super init];
    if (self != nil) {
        CCSprite * bg = [CCSprite spriteWithFile:@"MenuBg.png"];
        [bg setPosition:ccp(240, 160)];
        [self addChild:bg z:0];
        [self addChild:[BaseLayer node] z:1];
    }
    return self;
}
@end


@implementation BaseLayer
- (id) init {
    if (self != nil) {
	
	}
    return self;
}

- (void)tapDownAt:(CGPoint)location {
	return;
}

- (void) dealloc
{
	[super dealloc];
}

@end
